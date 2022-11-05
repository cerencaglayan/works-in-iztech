def isanagram(str1,str2):
    letter1 = []
    letter2 = []
    for a in str1.lower():
        letter1.append(a)
    for b in str2.lower():
        letter2.append(b)
    letter1.sort()
    letter2.sort()
    print(letter1)
    print(letter2)
    
isanagram("damla", "dmlaa")