import re

s = input()
print(bool(re.search(r'^[1-9][0-9]{5}$', s) and len(re.findall(r'(.)(?=.\1)', s)) < 2))