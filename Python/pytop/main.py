"""
Playing around psutil and wanting to build a local system monitor in Python
This is very redamentary as I jsut learned of this module.
Getting advice from this site here:
https://linoxide.com/monitoring-2/psutil-library-fectch-process-information/
"""

import psutil
import os
import view

def cpu():
    cpu_count = psutil.cpu_count()
    cpu_frequency = psutil.cpu_freq()

    print(f'CPU Precent: {cpu_count}')
    print(f'CPU Frequency: {cpu_frequency}')


def memory():
    virtual_memory = psutil.virtual_memory()
    print(f'Virtual Memory: {virtual_memory}')


def disk():
    disk_partitions = psutil.disk_partitions()

    for i in disk_partitions:
        print(f'Disk Partitions: {i}')


def main():
    cpu()
    disk()
    memory()


if __name__ == '__main__':
    view.print_rows()
    # main()

