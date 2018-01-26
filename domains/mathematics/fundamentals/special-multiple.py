#!/bin/python3

for _ in range(int(input())):
    i = 1
    n = int(input())
    while True:
        x = int(bin(i)[2:].replace('1', '9'))
        if x % n == 0:
            break
        i += 1
    print(x)
