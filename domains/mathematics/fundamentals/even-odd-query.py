#!/bin/python3

n = int(input())
l = [int(x) for x in input().split()]
for _ in range(int(input())):
    x, y = [int(i) for i in input().split()]
    if l[x - 1] % 2 != 0:
        print("Odd")
    else:
        if x == n:
            print("Even")
        else:
            if l[x] == 0 and (y - x) > 0:
                print("Odd")
            else:
                print("Even")
