import psutil
import os


def get_cpu():
    cpu_precent = psutil.cpu_percent()
    print(cpu_precent)


def get_virtual_memory():
    virtual_memory = psutil.virtual_memory()
    print(virtual_memory)

def main():
    get_cpu()
    get_virtual_memory()


if __name__ == '__main__':
    main()

