tmplist = []
n = int(input())

for i in range(0, n):
  tmp = input().split()
  if tmp[0] == 'insert':
    tmplist.insert(int(tmp[1]), int(tmp[2]))
  elif tmp[0] == 'print':
    print(tmplist)
  elif tmp[0] == 'remove':
    tmplist.remove(int(tmp[1]))
  elif tmp[0] == 'append':
    tmplist.append(int(tmp[1]))
  elif tmp[0] == 'sort':
    tmplist.sort()
  elif tmp[0] == 'pop':
    tmplist.pop()
  elif tmp[0] == 'reverse':
    tmplist.reverse()
