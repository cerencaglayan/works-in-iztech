import module_one 
import statistics,random,sys,re,os,glob
from array import array



"""
string hatırlatmaları
"""
text = "abcde"
#text[1] = "f" error
#print(text[:2]+text[2:])

#yeni bir string için:
    
new_text = text[:-1] + "fgh"
number = 1

def standard_arg(arg):
    print(arg)

def pos_only_arg(arg, /):
    print(arg)

def kwd_only_arg(*, arg):
    print(arg)

def combined_example(pos_only, /, standard, *, kwd_only):
    print(pos_only, standard, kwd_only)


#lambda
# 



"""
a = [4,9,7,2,3,6,4,6]
b =sorted(a, reverse=True)
"""

"""
pairs = [(1, 'one'), (2, 'two'), (3, 'three'), (4, 'four')]
pairs.sort(key=lambda pair: pair[0])
print(pairs)
"""

"""
def f(ham: str, eggs: str = 'eggs') -> str:
    print("Annotations:", f.__annotations__)
    print("Arguments:", ham, eggs)
    return ham + ' and ' + eggs
"""


"""
!r yapmak tırnak içine aldırır.

animals = 'eels'
print(f'My hovercraft is full of {animals}.')

print(f'My hovercraft is full of {animals!r}.')

= kullanmak animals='eels' olarak yazdırır.




"""

number = 568
number = int(str(number)[::-1])
print(number)
