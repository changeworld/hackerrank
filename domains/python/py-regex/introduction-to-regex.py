import re

for _ in range(int(input())):
    T = input()
    print('True' if re.search(r'^[+-]?\d*\.\d+$', T) else 'False')
