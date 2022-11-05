# -*- coding: utf-8 -*-
"""
Created on Mon Nov 22 14:29:17 2021

@author: cerca
"""

import re
def is_palindromic(String):
    pattern = "^aa[a-b]*aa$|^ab[a-b]*ba$|^ba[a-b]*ab$|^bb[a-b]*bb$"
    if(re.match(pattern, String) != None):
        print("It'S pa")
        return True
    else:
        print("Not in L")

string = input()

print(is_palindromic(string))

print(is_palindromic("babaaaba"))
print(is_palindromic("baba"))
print(is_palindromic("bab"))
print(is_palindromic("babaa"))
print(is_palindromic("abaaaaaabbbbbbbba"))