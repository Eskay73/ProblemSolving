line1 = list(input().split())
line2 = list(input().split())
line3 = list(input().split())

incsum = 0
outsum = 0
diff = 0

Nin=[]
Mout=[]

N = int(line1[0])
M = int(line1[1])
R = int(line1[2])

for i in line2:
    Nin.append(int(i))

incsum = sum(Nin)
incsum += R
    
for j in line3:
    Mout.append(int(j))

outsum = sum(Mout)

diff = outsum - incsum
if diff == 0:
    print("BALANCED")
else:
    print(diff)