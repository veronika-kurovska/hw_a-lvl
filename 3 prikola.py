inp = int(input())
match(inp):
    case 1:

        import random

        file=open("text.txt", "w")
        file.write('2 4 5;3 2\n3 2 1;2 0\n6 5 2 1 2;3 1\n')
        for i in range(20):
            file.write(f'{random.randrange(1, 10)} {random.randrange(1, 10)} {random.randrange(1, 10)};{random.randrange(1, 10)} {random.randrange(1, 10)}\n')
        file.close()

        file2 = open('text.txt', 'r')
        for line in file2:
            spl = line.split(';')
            left = sum(map(int, spl[0].split())) // len(spl[0].split())
            left2 = sum(map(int, spl[0].split())) % len(spl[0].split())
            right = spl[1].split()
            if left == int(right[0]) and left2 == int(right[1]):
                print(line, True)
            else:
                print(line, False)
    case 2:
        num = int(input('Номер квартиры:'))
        fl = int(input())
        apart_fl = int(input())


        def num_apart():
            pod = fl * apart_fl
            if num % pod:
                which_pod = num // pod + 1
            else:
                which_pod = num // pod
            if num % pod:
                which_fl = (num // which_pod // apart_fl + 1)
            else:
                which_fl = fl

            print (str(which_pod) + ' подъезд')
            print (str(which_fl) + ' этаж')
        num_apart()
    case 3:
        num = int(input('Введите нечетное: '))

        if num % 2 != 0:
            print('Четное, поробуйте еще раз')
        else:
            x = 1
            pr = num // 2
            while x != num + 2:
                print(' ' * pr + ('*' * x))
                x += 2
                num -= 1

            y = num - 2
            while y > 0:
                print('*' * y)
                y -= 2