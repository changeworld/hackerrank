#!/bin/python3

sum = 0
for i in range(int(input())):
    sum += pow(1 / 2, i) * (pow(2, i) / 2) * int(input())
print('%.1f' % sum)
