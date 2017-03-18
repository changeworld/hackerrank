import re

for _ in range(int(input())):
    print('YES' if re.match(r'^[7-9][0-9]{9}$', input()) else 'NO')