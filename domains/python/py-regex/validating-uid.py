import re

for _ in range(int(input())):
    s = input()
    if re.search(r'[A-Z].*[A-Z]', s) and re.search(r'[0-9].*[0-9].*[0-9]', s) and re.search(r'^[0-9a-zA-Z]{10}$', s) and not re.search(r'(.).*\1', s):
        print('Valid')
    else:
        print('Invalid')