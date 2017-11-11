n,k = input().strip().split(' ')
n,k = [int(n),int(k)]
rQueen,cQueen = input().strip().split(' ')
rQueen,cQueen = [int(rQueen),int(cQueen)]
obList = []
for a0 in range(k):
    rObstacle,cObstacle = input().strip().split(' ')
    rObstacle,cObstacle = [int(rObstacle),int(cObstacle)]
    obList.append((rObstacle,cObstacle))
obSet = set(obList)
SHIFT = [(1,0),(1,1),(0,1),(-1,1),(-1,0),(-1,-1),(0,-1),(1,-1)]
cnt = 0
for shift in SHIFT:
    pos = (rQueen,cQueen)
    while pos[0] + shift[0] >=1 and pos[0] + shift[0] <= n and pos[1] + shift[1] >=1 and pos[1] + shift[1] <= n:
        pos = (pos[0]+shift[0],pos[1]+shift[1])
        if pos in obSet:
            break
        cnt += 1
print(cnt)