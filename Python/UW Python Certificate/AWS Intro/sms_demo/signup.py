""" Sign up using AWS Cognito """

import json
import boto3
import hmac
import hashlib
import base64
import os
from urllib.parse import parse_qs


APP_CLIENT_ID = os.environ['APP_CLIENT_ID']
USER_POOL_ID = os.environ['APP_POOL_ID']
APP_CLIENT_SECRET = os.environ['APP_SECRET']

client = None

def get_secret_hash(username):
    msg = username + APP_CLIENT_ID
    dig = hmac.new(
        str(APP_CLIENT_SECRET).encode('utf-8'),
        msg = str(msg).encode('utf-8'),
        digestmod = hashlib.sha256
    ).digest()

    return base64.b64encode(dig).decode()


def sign_up(username, password):
    try:
        response = client.sign_up(
            ClientId = APP_CLIENT_ID,
            SecretHash = get_secret_hash(username),
            Username = username,
            Password = password
        )
        print(response)
        return response
    except Exception as e:
        return e


def lambda_handler(event, context):
    global client
    client = boto3.client('cognito-idp')

    # body = json.loads(event['body'])
    body = parse_qs(event['body'])

    username = body['username'][0]
    password = body['password'][0]

    print(username, password)

    try:
        sign_up(username, password)
        return {
            'statusCode': 200,
            'body': 'OK'
        }
    except Exception as e:
        return {
            'statusCode': 500,
            'body': str(e)
        }
