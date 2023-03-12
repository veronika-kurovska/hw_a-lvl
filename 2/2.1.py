print("Vvedite znachenie")
inp = int(input())
print("Znachenie kotoroe mi vveli " +str(inp))
match inp:
    case 1:
        print("from example 1:")
        print ("Give it to me!")
        number = int(input())

        if (number >= 100):
            print ("Thanks, man!")
        elif ((number > 10) and (number < 100)):
            print ("OK :(")
        else:
            print ("WHAAAAT????")

        if (number > 1000):
            print ("!!!!WOOOOWWWW!!!")
    case 2:
        print("from example 2:")
        x = 5
        y = 10
        z = 15
        print((x < y) and (y <= z))
        print(x < y <= z)

    case 3:
        print("from example 3:")
        l1 = [1, 2, 3]
        l2 = [1, 2, 3]
        print("l1 == l2")
        print(l1 is l2)
        print(l1 is not l2)
    case 4:
        print("from example 4:")
        l1 = [1, 2, 3]
        print(3 in l1)
        print(4 in l1)
        print(5 not in l1)

    case 5:
        print("from example 5:")
        test = True
        print('Test is True' if test else 'Test is False')



    case _:
        print("error")
