#!/bin/python3

for i in range(int(input())):
    input()
    nums = list(map(int, input().split(' ')))
    sum_l, sum_r, result = 0, sum(nums), 'NO'
    for num in nums:
        if (sum_r - num) / 2 == sum_l:
            result = 'YES'
            break
        sum_l += num
    print(result)
