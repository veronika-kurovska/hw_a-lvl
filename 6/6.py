print("ur cash:")
vznos = int(input())
print("compound interest:")
percent = float(input())
print("in days:")
days = int(input())
def kapitalizacia():
    percent_ = percent/100
    answer = vznos*((1+(percent_/365))**days)
    print(answer)
kapitalizacia()