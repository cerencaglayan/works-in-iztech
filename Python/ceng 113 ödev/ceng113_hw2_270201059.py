file = "provinces.txt"
a = open(file,"r")
cities,options,x_s,y_s = [],[],[],[]
my_x1,my_x2,my_y1,my_y2 = "","","",""
for q in a.readlines():
    q1 = q.split(",")
    cities.append(q1[0])
    x_s.append(q1[1])
    y_s.append(q1[2]) #I append the coordinates to the list seperately.(Also cities.)
a.close()
while True:  
    input1 = input("Departure province:\n").upper().strip()
    b = ""
    if input1 in cities:
        my_x1 = x_s[cities.index(input1)] #I get the first city's coordinates.
        my_y1 = y_s[cities.index(input1)] 
        break
    else:
        options = [] # I created the loop that stops until find a city that inside of the cities.
        index = 0
        for a in cities:
            if a.startswith(input1) == True:
                if a not in options:
                    options.append(a)                        
        if len(options) != 0:            
            print("Province not found!")
            if len(options) == 1:
                print("Possible province:"+options[0])   
                continue
            else:
                options.sort()
                c = ""
                for a in options:
                    c = c+a+","
                print("Possible provinces:"+c[:-1])                    
                continue
        else:
            print("Province not found!")  
            continue
while True:
    input2 = input("Arrival province:\n").upper().strip() # I also did same things for the second city.
    b = ""
    if input2 == input1: 
        print("Enter a different province!")
        continue 
    if input2 in cities:
        my_x2 = x_s[cities.index(input2)]
        my_y2 = y_s[cities.index(input2)]
        break
    else:
        options = []
        index = 0
        for a in cities:
            if a.startswith(input2) == True:
                if a not in options:
                    options.append(a)                       
        if len(options) != 0:         
            print("Province not found!")
            if len(options) == 1:
                print("Possible province:"+options[0])              
                continue
            else:
                options.sort()
                c = ""
                for a in options:
                    c = c+a+","
                print("Possible provinces:"+c[:-1])                  
                continue
        else:
            print("Province not found!")
            continue
while True:
    input3 = input("Enter travel type:\n").upper().strip() #I created a loop for finding travel type, loop stops if input is valid.
    if input3 != "CAR" and input3 != "BICYCLE" and input3 != "MOTORCYCLE":
        continue
    else:
        break
distance =  (((float(my_x2)-float(my_x1))**2+(float(my_y2)-float(my_y1))**2)**(1/2))*100 #with coordinates, i found the distance.
distance1 = round(distance,2)
distance_ = str(distance1)
if len(distance_[distance_.index("."):]) == 2:
    distance_ += "0"
print("")
print("I am calculating the distance between {} and {} ...\n".format(input1,input2))   
print("Distance: "+distance_+" "+"km")
if input3 == "CAR":
    time = distance/90
elif input3 == "BICYCLE":
    time = distance/25
elif input3 == "MOTORCYCLE":
    time = distance/80
ana = str(((time-int(time))*60))  # I found time.
print("Approximate travel time with {}: ".format(input3)+str(int(time)),"hours",ana[:ana.index(".")],"minutes")
sözlük = dict() # I created a dict so that i can append the all cities and their distance for recommending.
index = 0
for q in x_s:
    for b in y_s:
        if index == len(y_s): 
            break
        distance_1 = (((float(x_s[index])-float(my_x1))**2+(float(y_s[index])-float(my_y1))**2)**(1/2))*100  
        if cities[index] not in sözlük.values() and  cities[index] != input1 :
            sözlük[distance_1] = cities[index]
            index+=1
        else:       
            index+=1       
mesafe,recommended = [],[] 
final = ""
for a in sözlük.keys():
    mesafe.append(a)
mesafe.sort() # I sorted the distances.
for a in mesafe[:3]:
    recommended.append(sözlük[a]) # I got the values for using keys(distances).
recommended.sort() # I also sorted again for get alphabetical order.
for a in recommended:
    final = final + a+ ","
print("Recommended places close to {}:".format(input1)+final[:-1])
    








   