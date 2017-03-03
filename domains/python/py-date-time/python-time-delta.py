from datetime import datetime

fmt = '%a %d %b %Y %H:%M:%S %z'
for _ in range(int(input())):
    print(int(abs((datetime.strptime(input(), fmt) - datetime.strptime(input(), fmt)).total_seconds())))