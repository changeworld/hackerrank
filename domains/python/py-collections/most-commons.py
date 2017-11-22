from collections import Counter

S = Counter(input().rstrip())
i = 0
for v, k in sorted((-v, k) for k, v in S.most_common()):
    print(k + ' ' + str(-v))
    i += 1
    if i >= 3:
        break
