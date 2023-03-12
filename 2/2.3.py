print("your number1, pls:")
fizz = int(input())

print("your number2, pls:")
buzz = int(input())

print("your number3, pls:")
my_iter = int(input())

for i in range(1, my_iter+1):
    if (i%fizz == 0 and i%buzz == 0):
        print("FB")
    elif (i%fizz == 0):
        print("F")
    elif (i%buzz==0):
        print("B")
    else:
        print(i)



