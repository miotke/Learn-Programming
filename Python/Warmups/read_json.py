""" Read a json file with Python and CLI args """

import argparse
import json

def cli_args():
    parser = argparse.ArugmentParser(description="Pass in a valid json file")
    parser.add_argument("-i", "--input", help="Pass in a .json file" required=True)

    return parser.parse_args()


def read_json(filename):
    with open(filename) as file:
        try:
            data = file.read()
            print(data)
        except ValueError:
            print("Json file is invalid")
            exit(0)


if __name__ == "__main__":
    args = cli_args()
    read_json(args.input)
