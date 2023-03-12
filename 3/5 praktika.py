
def zapyatie_tochki(string):
        strochka=""
        for i in string:
                if str.isalpha(i) or str.isspace(i):
                        strochka += i
        return strochka

print("Vvedite znachenie")
inp = int(input())
print("praktika "+str(inp))
match inp:
        case 1:
                def to_low(string):
                        return string.lower()

                def to_upp(string):
                        return string.upper()

                inp_str = "I Don`T UndestAND how to USE python".split()
                print(list(map(to_low, inp_str)))
                print(list(map(to_upp, inp_str)))
        case 2:
                def kvadrat(chislo):
                        return chislo**2

                def is_simple(numb2):
                        help_numb=int(numb2 ** 0.5)+1
                        for i in range(2, help_numb):
                                if not numb2 % i:
                                        return False
                        return True


                answ = list(filter(is_simple, range(51)))
                print(answ)
                print(list(map(kvadrat, answ)))

        case 3:
                document = open('5.txt', 'r')
                file=document.read()
                prosto_slova=zapyatie_tochki(file)
                words = str.lower(prosto_slova.split())

                for i in words:
                        for j in words:
                                if i==j:
                                      pass



                document.close()


