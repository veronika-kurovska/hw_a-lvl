print("1-5")
inp=int(input())
match inp:
    case 1:
        i = list(range(5))
        x=0
        for j in i:
            x=j+x
        print(x)
    case 2:
        import sys
        filename = sys.argv[0]
        print(filename)
        f = open(filename, "r")
        for i in f:
            print(i)

        f.close()
    case 3:
        S = "This is so hard!"
        print(S[::-1])
    case 4:
        print("Сколько вы хотите снять?")
        inp = int(input())
        bill = (500, 100, 50, 20, 10, 1)
        for i in bill:
            if inp >= i:
                print(f"Купюра:{i}, Количество:{(int(inp/i))}")
                inp=inp%i
    case 5:
        print("Сколько вы хотите снять?")
        inp = int(input())
        bill = (1, 10, 20, 50, 100, 500)
        x=10
        for i in bill:
            if inp >= i:
                while inp/i>x:
                    print("Купюра:" + str(i), " Количество:" + str(x))
                    inp = inp-(i*x)




