#!/bin/python3

n, k = map(int, input().split())
l = list(map(int, input().split()))
ans = []
for i in range(n):
    if i < k:
        ans.append(str(n-i))
        if l[i] == (n - i):
            k+=1
        elif l[i] > (n - i):
            num = l[i]
            while num > (n-i):
                num = l[n - num]
            if num == (n - i):
                k+=1
    else:
        if l[i] <= (n - k):
            ans.append(str(l[i]))
        else:
            num = l[i]
            while num > (n-k):
                num = l[n - num]
            ans.append(str(num))
print(" ".join(ans))
