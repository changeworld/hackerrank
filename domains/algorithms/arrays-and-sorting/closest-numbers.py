n = int(input())
l = list(map(int, input().split()))
l.sort()
diff = [abs(l[i]-l[i+1]) for i in range(n-1)]
m = min(diff)
for i in range(len(diff)):
    if m == diff[i]:
        print(l[i], end=' ')
        print(l[i+1], end=' ')
