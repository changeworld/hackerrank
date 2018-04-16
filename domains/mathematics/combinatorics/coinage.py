import math

def subcase(t, c1, c2, n1, n2):
    mincoins = math.ceil((t - c1 * min(n1, t // c1)) / c2)
    maxcoins = min(t // c2, n2)
    return max(maxcoins - mincoins + 1, 0)

for _ in range(int(input())):
    n = int(input())
    result = 0
    a, b, c, d = map(int, input().split())
    for i in range(0, n // 5 + 1):
        result += subcase(5 * i, 5, 10, c, d) * subcase(n - 5 * i, 1, 2, a, b)
    print(result)
