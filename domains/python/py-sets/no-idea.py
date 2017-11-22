input()
X = [int(e) for e in input().split()]
A = {int(e) for e in input().split()}
B = {int(e) for e in input().split()}
r = 0
for e in X:
    r += (e in A) - (e in B)
print(r)
