#блок переменных состояний
does_he_go = False
correct_answer = False
print("КОЛОБОК")
print("Колобку комфортно жить с бабушкой и дедушкой? Введите \"yes\" или \"no\"")

answer=str(input())
if answer=="no":
    print("Колобку не нравится жить с бабушкой и дедушкой.")
    does_he_go = True
    correct_answer = True
elif answer == "yes":
    print("Колобку нравится жить с бабушкой и дедушкой.")
    correct_answer = True
else:
    print("некорректное значение")
#Проверяем ушел ли колобок

if does_he_go and correct_answer:
    print ("Колобок ушёл из дома.")
    print("Колобок встретил лису?  Введите \"yes\" или \"no\"")
    answer=str(input())
    if answer=="yes":
        print("Колобка скушала лиса.")
    else:
        print("Колобок устал справляться с трудностями мира и вернулся к бабушке.")
elif correct_answer==False:
    pass

else:
    print("Колобок остался дома.")





#print("? Введите \"yes\" или \"no\"")

#answer=str(input())
print("Конец сказки.")