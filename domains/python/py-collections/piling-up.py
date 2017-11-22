for _ in range(int(input())):
    input()
    a = [(int(e), i) for i, e in enumerate(input().split())]
    idx = min(a)[1]
    print('Yes' if all(
        sorted(e) == e
        for e in ([e[0] for e in reversed(a[:idx])], a[idx:])) else 'No')
