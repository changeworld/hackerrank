#!/bin/python3
unsorted = []
unsorted_i = 0
for unsorted_i in range(int(input().strip())):
    unsorted_t = str(input().strip())
    unsorted.append(unsorted_t)
print('\n'.join(sorted(unsorted, key=int)))
