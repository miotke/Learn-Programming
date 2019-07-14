""" Read a text file with Python and args """

import argparse

def cli_args():
    parser = argparse.ArgumentParser(description='Reads a text file that has been passed in')
    parser.add_argument('-i', '--input', help='For this example, pass in data.txt. Otherwise create your own .txt file and pass that in instead', required=True)

    return parser.parse_args()


def read_text(filename):
    with open(filename, 'r') as file:
        try:
            data = file.read()
            print(data)
            data = file.close()
        except SystemExit:
            exit(0)


if __name__ == '__main__':
    args = cli_args()
    read_text(args.input)
