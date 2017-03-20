import re

css = False
for _ in range(int(input())):
    str = input().strip()
    if not str:
        pass
    elif str[-1] == '{':
        css = True
    elif str[-1]=='}':
        css = False
    elif css:
        for e in re.finditer(r'#[0-9a-fA-F]+', str):
            if len(e.group(0)) == 4 or len(e.group(0)) == 7:
                print(e.group(0))