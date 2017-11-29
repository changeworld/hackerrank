#!/bin/python3

import sys

if __name__ == "__main__":
    for _ in range(int(input().strip())):
        print(len(set(input().strip())))
