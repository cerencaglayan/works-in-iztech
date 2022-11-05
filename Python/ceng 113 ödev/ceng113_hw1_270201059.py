x1,x2,y1,y2,non,non2 =[],[],[],[],[],[]
xsimp,ysimp,xsimp1,ysimp1,non1,non3 = 0,0,0,0,0,0
first_equation = input("Enter the first equation:\n")
first_equation = first_equation.split("=")

#+2x=+6
#-2x-1y-12=+0

liste = first_equation[0].split("+")
if "" in liste:
    liste.remove("")
for a in liste:      
    liste[liste.index(a)] = "+" + a
for a in liste:
    if "-" in a:
        b = a.split("-")  
        if "" in liste:
            liste.remove("")
        liste = b + liste 
        liste.remove(a)
for a in liste:
    if "-" not in a and "+" not in a:
        liste[liste.index(a)] = "-" + a
for a in liste:
    if a == "+" or a == "-":
        liste.remove(a)
for a in liste:
    if "x" in a and a not in x1:
        sayı = int(a[:a.index("x")])
        x1.append(sayı)
    elif "y" in a and a not in y1:
        sayı = int(a[:a.index("y")])
        y1.append(sayı)
    elif "x" not in a and "y" not in a and a not in non:
        sayı = -int(a)
        non.append(sayı)       
liste1 = first_equation[1].split("+")
if "" in liste1:
    liste1.remove("")
for a in liste1:      
    liste1[liste1.index(a)] = "+" + a
for a in liste1:
    if "-" in a:
        b = a.split("-")
        liste1 = b + liste1
        if len(a) > 3:
            liste1.remove(a)               
        if "" in liste1:
            liste1.remove("")
for a in liste1:
    if "-" not in a and "+" not in a:
        liste1[liste1.index(a)] = "-" + a
for a in liste1:
    if a == "+" or a == "-":
        liste1.remove(a)
for a in liste1:
    if "x" in a and a not in x1:
        sayı = -int(a[:a.index("x")])
        x1.append(sayı)
    elif "y" in a and a not in y1:
        sayı = -int(a[:a.index("y")])
    elif "x" not in a and "y" not in a and a not in non:
        sayı = int(a)
        non.append(sayı)  
second_equation = input("Enter the second equation:\n")
second_equation = second_equation.split("=")
liste2 = second_equation[0].split("+")
if "" in liste2:
    liste2.remove("")
for a in liste2:      
    liste2[liste2.index(a)] = "+" + a
for a in liste2:
    if "-" in a:
        b = a.split("-")  
        if "" in liste2:
            liste2.remove("")
        liste2 = b + liste2 
        liste2.remove(a)
for a in liste2:
    if "-" not in a and "+" not in a:
        liste2[liste2.index(a)] = "-" + a
for a in liste2:
    if a == "+" or a == "-":
        liste2.remove(a)
for a in liste2:
    if "x" in a and a not in x2:
        sayı = int(a[:a.index("x")])
        x2.append(sayı)
    elif "y" in a and a not in y2:
        sayı = int(a[:a.index("y")])
        y2.append(sayı)   
    elif "x" not in a and "y" not in a and a not in non2:
        sayı = -int(a)
        non2.append(sayı)       
liste3 = second_equation[1].split("+")
if "" in liste3:
    liste3.remove("")
for a in liste3:      
    liste3[liste3.index(a)] = "+" + a
for a in liste3:
    if "-" in a:
        b = a.split("-")
        liste3 = b + liste3
        if len(a) > 3:
            liste3.remove(a)              
        if "" in liste3:
            liste1.remove("")
for a in liste3:
    if "-" not in a and "+" not in a:
        liste3[liste3.index(a)] = "-" + a
for a in liste3:
    if a == "+" or a == "-":
        liste3.remove(a)
for a in liste3:
    if "x" in a and a not in x2:
        sayı = -int(a[:a.index("x")])
        x2.append(sayı)
    elif "y" in a and a not in y2:
        sayı = -int(a[:a.index("y")])
        y2.append(sayı)
    elif "x" not in a and "y" not in a and a not in non2:
        sayı = int(a)
        non2.append(sayı)
for a in x1:
    xsimp += a
for a in y1:
    ysimp += a
for a in x2:
    xsimp1 += a
for a in y2:
    ysimp1 += a
for a in non:
    non1 += a
for a in non2:
    non3 += a
if ysimp >= 0:
    ysimp = "+" + str(ysimp)
elif ysimp1 >= 0:
    ysimp1 = "+" + str(ysimp1)

first = str(xsimp)+"x" + str(ysimp)+"y" +"="+str(non1)  
second = str(xsimp1)+"x" + str(ysimp1)+"y" +"="+str(non3) 
print("""Equations in the simplified form:""")
print(first)
print(second)
if xsimp+xsimp1 == 0:
    main_y = (non1+non3)/(int(ysimp)+int(ysimp1))
    main_x =  (non1-(int(ysimp)*main_y))/xsimp
    print("Solution:")
    print("x="+str(int(main_x)))
    print("y="+str(int(main_y)))

else:
    main_y = int((non1*xsimp1-non3*xsimp)/(int(ysimp)*xsimp1-int(ysimp1)*xsimp))
    main_x = int((non1*int(ysimp1)-non3*int(ysimp))/(int(xsimp)*int(ysimp1)-int(xsimp1)*int(ysimp)))
    print("Solution:")
    print("x="+str(main_x))
    print("y="+str(main_y))
