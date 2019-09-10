"""
In class this script would upload the a .mp3 file to AWS Polly to analyze and play back with
a specific voice.
Add one of the following file types to have Polly analyze the file.
- .jpg
- .mp3
We built this to show
"""

import requests
import boto3
import os

def get_news(api_key):
    NEWS_API = (
        'https://newsapi.org/v2/top-headlines?'
        'country=us&'
        'apiKey=' + api_key
    )
    response = requests.get(NEWS_API)
    return response.json()


def text_to_speech(filename, text, format='mp3', voice='Matthew'):
    polly = boto3.client(
        'polly',
        region_name = 'us-east-1',
        aws_access_key_id = os.environ['AWS_ACCESS_KEY_ID'],
        aws_secret_access_key = os.environ['AWS_SECRET_KEY_ID'],
    )

    response = polly.synthesize_speech(OutPutFormat=format, Text=text, VoiceId=voice)

    with open(f'{filename}.{format}', 'wb') as soundFile:
        soundBytes = response['AudioStream'].read()
        soundFile.write(soundBytes)


if __name__ == '__main__':
    NEWS_API_KEY = os.environ['newsApiKey']

    news = get_news(NEWS_API_KEY)
    print(news)

    for i, article in enumerate(news['articles'][:5]):
        try:
            filename = f'{i}'
            text = article['title'] + article['description']

            text_to_speech(filename, text)

        except Exception as identifier:
            pass
