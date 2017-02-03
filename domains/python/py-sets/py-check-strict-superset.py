A = set(map(int, input().split()))
is_strict_superset = True
for _ in range(int(input())):
    B = set(map(int, input().split()))
    if not A.issuperset(B):
        is_strict_superset = False
print(is_strict_superset)