_, k = [int(i) for i in input().split()]
s = [int(i) % k for i in input().split()]
c = set(s)
subset = 0
index = []
for i in c:
    if i == 0 or i == k / 2:
        subset += 1
        index.append(i)
    else:
        if (k - i) in c:
            s_index = (i, k - i)[s.count(k - i) > s.count(i)]
            if s_index not in index:
                subset += s.count(s_index)
                index.append(s_index)
        else:
            subset += s.count(i)
            index.append(i)
print(subset)
