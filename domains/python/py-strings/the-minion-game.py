def minion_game(s):
    n = len(s)
    r = [0, 0]
    for i in range(n):
        if s[i] in ('AEIOU'):
            r[0] += n - i
        else:
            r[1] += n - i
    if r[0] > r[1]:
        print('Kevin', r[0])
    elif r[1] > r[0]:
        print('Stuart', r[1])
    else:
        print('Draw')


if __name__ == '__main__':
    s = input()
    minion_game(s)
