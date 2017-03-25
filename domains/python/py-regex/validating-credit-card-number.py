import re

for _ in range(int(input())):
    s = input()
    t = re.findall(r'^([4-6]\d{15})$', s) or re.findall(r'^([4-6]\d{3})-(\d{4})-(\d{4})-(\d{4})$', s)
    r = t and not re.search(r'(\d)\1\1\1', ''.join(t[0]))
    if r:
        print('Valid')
    else:
        print('Invalid')