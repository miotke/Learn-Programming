""" Testing opening and reading json """

import argparse
import json

def cli_args():
    parser = argparse.ArgumentParser(description="pass in source.json")
    parser.add_argument('-i', '--input', help="type json file", required=True)

    return parser.parse_args()


def read_json_data(filename):
    with open(filename) as file:
        try:
            s = file.read()
            s = s.replace(',,', ',')
            data = json.loads(s)
            print(data)
        except SystemExit:
            exit(0)


if __name__ == '__main__':
    args = cli_args()
    read_json_data(args.input)
