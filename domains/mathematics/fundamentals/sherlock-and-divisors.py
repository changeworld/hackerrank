from functools import reduce

for _ in range(int(input())):
    n = int(input())
    print(
        len(
            set(
                filter(lambda x: x % 2 == 0,
                       reduce(lambda x, y: x + y, ((
                           i, n / i) for i in range(1, int(n**0.5) + 1)
                                                   if n % i == 0))))))
