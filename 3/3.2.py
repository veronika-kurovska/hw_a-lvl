import random

file=open("text.txt", "w+")
for i in range(20):
    file.write(f'{random.randrange(1, 10)} {random.randrange(1, 10)} 10 \n')

file.close()
file=open("text.txt", "r+")
for line in file:
    its_list = line.split()
    fizz = int(its_list[0])
    buzz = int(its_list[1])
    my_iter = int(its_list[2])
    anw=""
    for i in range(1,my_iter+1):
        if (i % fizz == 0 and i % buzz == 0):
            anw = anw + " FB"
        elif (i % fizz == 0):
            anw = anw + " F"
        elif (i % buzz == 0):
            anw = anw + " B"
        else:
            anw = anw + " " + str(i)
    print(anw)



file.close()

