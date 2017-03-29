def merge_the_tools(s, k):
    l = len(s)//k
    for i in range(l):
        r = ''
        for c in s[i*k:i*k+k]:
            if c not in r:
                r += c
        print(r)
if __name__ == '__main__':
    string, k = input(), int(input())
    merge_the_tools(string, k)