import re

for _ in range(int(input())):
    try:
        re.compile(input().strip())
        print(True)
    except re.error:
        print(False)