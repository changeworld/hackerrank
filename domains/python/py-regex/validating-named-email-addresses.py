import email.utils, re

for _ in range(int(input())):
    x = email.utils.parseaddr(input().strip())
    if x[1]:
        y = x[1].split('@')
        if len(y) > 1:
            z = y[1].split('.')
            if len(z) == 2 and re.search(r'^[a-zA-Z][0-9a-zA-Z-_\.]*$', y[0]) and all(re.search(r'^[a-zA-Z]+$', e) for e in z) and len(z[-1]) < 4:
                print(email.utils.formataddr(x))