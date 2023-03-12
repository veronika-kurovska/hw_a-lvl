print("your number1, pls:")
fizz = int(input())

print("your number2, pls:")
buzz = int(input())

print("your number3, pls:")
my_iter = int(input())
anw = "" #добавили строчки
for i in range(1, my_iter+1):
    if (i%fizz == 0 and i%buzz == 0):
        anw=anw+" FB"
    elif (i%fizz == 0):
        anw=anw+" F"
    elif (i%buzz==0):
        anw=anw+" B"
    else:
        anw=anw+" "+str(i)
print(anw)



