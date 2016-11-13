s = input().rstrip()
t = input().rstrip()
r = 0
for i in range(len(s)-len(t)+1):
  if s[i:i+len(t)] == t: r += 1
print(r)
