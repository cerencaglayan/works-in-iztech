#270201059 Ceren Çağlayan
# I would like to inform you that I wrote my code in Spyder. Because in Assistance; you mentioned that you will consider while grading.Wish you have a good day..
file = "TaskList.txt"
file1 = "HallOfFame.txt"
task_list,winners = [],[] # i created 2 lists, first one is for task's information and other one is for winners.
a = open(file,"r+")
for q in a.readlines(): # i started to read all file(named TaskList.txt)
    q = q.split(",")    # i splitted the line to "," so that i can get my datas separetely. LİKE = ["Task1","-1","400","50"]
    task_list.append(q) # I appended my datas to list named task_list.
a.close()               # After the loop, i closed the file.

#I seperated all the activities to funtions.
       
def hero_attack(hero,index,task_list):
# this is the function when we go to our tasks, it calculates hero's hp when attacked.
# hero is hero's hp, task_list is our task's and informations and index is out index that which tasks are in now.
    hero = hero - int(task_list[index][3]) 
    return hero

def time__hero(time,distance_f):
#this is the funtion for calculating time when we chose "foot" option for going.
# time is total time during the game, distace_f is distance by foot that in which task are hero in.    
    hour = 0 # this is local variable named hour. 
    hour = distance_f/20   # I used hour for calculate the hour for going the task or home for hero.   
    time+=hour # I added the hour for our time.
    return time    # returned the uptating time.

def time__pegasus(distance_p,time):
#this is the funtion for calculating time when we chose "pegasus" option for going task.
# time is total time during the game, distace_p is distance by pegasus that in which task are hero in.  
    hour = 0
    hour = distance_p/50
    time+=hour  
    return time   
def go_war_hero(hero,distance_f):
# this is the funtion for calculating hero's Hp when we chose "foot" option for going.  
# hero is hero's HP, tdistace_f is distance by foot that in which task are hero in.          
    hero = hero - (((distance_f/20))*10)   
    print("Hero defeated the monster.")
    return hero   # I returned new hero value after user selected the "foot".          

def go_war_pegasus(pegasus,distance_p):
 # this is the funtion for calculating pegasus's hp when we chose "foot" option for going task.
# pegasus is pegasus's HP, distace_p is distance by pegasus that in which task are hero in.  
    pegasus = pegasus - (15*int(distance_p)/50) 
    print("Hero defeated the monster.")
    return pegasus      # I returned new pegasus value after user selected the "pegasus".   

def back_home_foot(distance_f,hero):
# this is the funtion for calculating pegasus's hp when we chose "foot" option for going home.
# hero is hero's HP, tdistace_f is distance by foot that in which task are hero in.   
    hero = hero - (((distance_f/20))*10)
    print("Hero arrived home.")
    return hero         # I returned new hero value after user  selected the "foot". 

def back_home_pegasus(pegasus,distance_p):
#this is the funtion for calculating pegasus's hp when we chose "foot" option for going.
# pegasus is pegasus's HP, distace_p is distance by pegasus that in which task are hero in. 
    print("Hero arrived home.")
    pegasus = pegasus - (15*(distance_p/50))
    return pegasus # I returned new pegasus value after user can select the "pegasus". 

def remove_task(my_task, task_list):    
 # this is the remove task funtion  
# my_task is the element that i wanted to be removed.                            
    if len(task_list) == 0:
        return [] # i returned the empty list if all tasks be removed.[With returning empty list, i controlled if game is over succesfully.]     
    else:
        if task_list[0] != my_task:
            return [task_list[0]] + remove_task(my_task, task_list[1:]) # i created a recursion 
        else:
            return remove_task(my_task, task_list[1:])  



def print_remaining_tasks(task_list,a,index1):   
# this is the funciton that print all remaning tasks.
# a is an integer , index1 is max index of my list named task_list.
# i also printed all the table, the titles and the lines (------...).That's why function is a little bit complicated.  
    by_foot_distance = task_list[0][1]+"km"+" "*(12-len(task_list[0][1]))   #these are my datas.I create a variable for formatting(so that my code line became shorter)
    by_pegasus = task_list[0][2]+"km"+" "*(7-len(task_list[0][2]))
    hp_needed =str(int(task_list[0][3]))+" "*(8-len(str(int(task_list[0][3]))))
    
#I firstly looked for if task_list only 1 element. If it was true, i needed to write my code as line 86.
    if index1==0:
        return "-"*52+"\n"+ "| TaskName | ByFootDistance | ByPegasus | HPNeeded |"+"\n"+ "-"*52 +"\n" +f"| {task_list[0][0]}    | {by_foot_distance} | {by_pegasus} | {hp_needed} |\n"+"-"*52
    #after I controlled this, i determined that the last index of the list my base case.
    # the variable a is 0. 
    else:
        if a == index1:
            # this is the base case. After this happens, we don't call function anymore.
            return "| {}    | {} | {} | {} |".format(task_list[0][0],by_foot_distance,by_pegasus,hp_needed) +"\n"+"-"*(52)
        else:  
            #until we got our base case, we need to call the function
            if a == 0:
                #For printing my title, i also added this condition so that i can write.
                return "-"*52+"\n"+ "| TaskName | ByFootDistance | ByPegasus | HPNeeded |"+"\n"+ "-"*52 +"\n" +f"| {task_list[0][0]}    | {by_foot_distance} | {by_pegasus} | {hp_needed} |\n" + print_remaining_tasks(task_list[1:],a+1,index1)
            else:
                return f"| {task_list[0][0]}    | {by_foot_distance} | {by_pegasus} | {hp_needed} |\n" + print_remaining_tasks(task_list[1:],a+1,index1)           
            
def victory(time,winners):
    name = input("What is your name:") 
    file1 = "HallOfFame.txt"
    w = open(file1,"a+",encoding="utf-8")  # with this function, i wrote my winners name into my file "HallOfFame.txt".(with a+, if file did not exist i create and write.)
    w.write(name+","+str(int(time))+"\n")  
    w.close()
    a = open(file1,"r+",encoding="utf-8") # I again opened the file and read my winners and their time fot finishing.
    for q in a.readlines():
        q = q.split(",")
        winners.append(q) # i appended my list named winners(i defined at line 5)
    a.close()   
    return winners
def show_the_winners(winners,time):
    # with this function, I sort the winners and print first 3 ones.
    winners = victory(time, winners) # i get the winners and their time for returning the value
    list1,final = [],[] # my local lists.
    index = 0 # my local variable for loop named index
    while True:
        # I looked for all indexes with using variable named index in line 116.
        #Until i came to last element of my winner list,loop continues.
        
        if winners[index] == winners[-1]:
            count = 0
            for q in range(len(winners)):  #I compared the times in the "winners" list with each other.
                if float(winners[index][1])>float(winners[q][1]):
                    
                    count+=1 #While doing this, I incremented the variable named count by one each if is true.
                if q ==len(winners)-1:                                    
                    item = winners[index]
                    list1.append([count,item])   # And I added these count values and my elements into list1 by making a list.
                    break
            break
        else:
            count = 0
            for q in range(len(winners)):
                if  float(winners[index][1])> float(winners[q][1]):
                    count+=1
                if q ==len(winners)-1:
                    item = winners[index]
                    list1.append([count,item])
                    index+=1
    # After doing this, i have a sorted list for winners.But, I needed to one more thing to sorting for showing who fininhed first:
    list1.reverse() 
    for q in list1:
        final.insert(q[0],q[1]) 
    print("Hall Of Fame")
    print(28*"-")
    print("| Name       | Finish Time  |")
    print(28*"-")
    # Our winners are ready as sorted at list named "final".
    if len(final)>=3:       
        for r in range(3):
            print("| "+final[r][0]+" "*(11-len(final[r][0]))+"| "+str(final[r][1][:-1])+" hour"+" "*(8-len(str(int(final[r][1]))))+"|")
            print(28*"-")
    else:
        for a in range(len(final)):
            print("| "+final[a][0]+" "*(11-len(final[a][0]))+"| "+str(final[a][1][:-1])+" hour"+" "*(8-len(str(final[a][1])))+" |")
            print(28*"-")
                                                                                                                                                                            
def game(task_list):
    pegasus,hero = 550,3000 # Hero's and Pegasus's HP's
    case,case1 = True,True # i created 2 variables that are boolean. So that i am able to control my statements.
    time = 0
    print("Welcome to Hero’s 5 Labors!")
    print("Remaining HP for Hero :",hero)
    print("Remaining HP for Pegasus :",pegasus)
    while True:  
        #Firstly, i defined my local variables that i'm going to use for my functions(distance_f and distance_p).
        distance_f,distance_p = 0,0 # distance_f means distance for foot, distance_p means distance for pegasus.
        index = -1 # i created a variable named index. If we get valid "task" for first input code assinged to index of the list's element our variable
        if case == False or case1 == False: 
            print("        GAME OVER!       ")
            print("☠☠☠☠☠☠☠☠☠☠☠☠☠☠")
            break
        if task_list == []:
            print("Congratulations, you have completed the task.")
            show_the_winners(winners, time)
            print("""
    🏆🏆🏆🏆🏆🏆
         👑               
          O
      ----|-----
          |
          |             
         | |   
        |   |  
""")           # a little bit decoration :) 
            break
        else:             
            print(print_remaining_tasks(task_list,0,len(task_list)-1))
            while True:
                where = input("Where should Hero go next?").title() # for case insensitivity, i used title() method.(so that we can get "Task1" etc.)

                for a in task_list:
                    if where == a[0]:             # I created loop and look for if my input is inside of the list.
                        index = task_list.index(a)#if we find, our variable(named index) is assinged to out list's index number.
                        break
                if index == -1: # if we did not assinged anything, that means our input is not valid.
                    print("Invalid input")
                    continue # so we ask client the question again until it is valid
                else:           
                    break
                
            while case:# After ending the  loop, we start this one with while True (because case==True.)  
                # We get the valid index value, so we can assingn our variables to our data that we need to use:
                distance_f = int(task_list[index][1]) # with value index, we can get our distances and hours as variable.
                distance_p =int(task_list[index][2])  # the reason that i did this is , when we remove our task from list, may some problem can occur .
                hour_p = int(task_list[index][2])/50  # so i put my information for stabilized variables.
                hour_f = int(task_list[index][2])/20
                
                if (hour_p*15)>= pegasus and (hour_f*10)>= hero : #  firstly,i look for my conditions that can be reason for losing...
                    case=False
                    continue
                elif task_list[index][1] == "-1" and (hour_p*15)> pegasus: 
                 # i looked for if hero con't go there foot and also pegasus does not have enough hp.
                    case=False
                    continue               
                # with assignig value False to variable named case, i can control if this statement not provived, so game is over.(I also used with other while loop.)
                else:
                    how = input("How do you want to travel?(Foot/Pegasus)").lower()                  
                    if how=="foot"or how=="pegasus": # i firstly find out if our input is "foot" or "pegasus". Otherwise it is invalid and asked till getting valid input.
                        if how=="foot":
                            if task_list[index][1] == "-1" :
                                print("You can not go there by foot!")
                                continue # with this condition we show the user that foot is false option. we asked again till the gatting valid input,"pegasus"
                            
                            if hero< (int(distance_f)/20)*10:
                                print("Hero does not have enough HP.")
                                continue
                            
                            else:                              
                                hero = go_war_hero(hero,distance_f) # I returned the values with calling the  funtion(I defined at line 35)  and assinged(uptated.)
                                time =time__hero(time, distance_f)  # I returned the values with calling the  funtion(I defined at line 20)  and assinged(uptated.)
                                print("Time passed: {} hour\n".format(int(time)))   
                                
                                
                                # after this, we looking at if our hero have enough HP for kill the monster. If it is not, game is over.
                                
                                if  int(task_list[index][3])<=hero:
                                    hero =hero_attack(hero, index, task_list) 
                                    print(f"Remaining HP for Hero: {int(hero)} ")
                                    print(f"Remaining HP for Pegasus: {int(pegasus)} \n")
                                    task_list = remove_task(task_list[index], task_list)
                                    break
                                # if our hero have enough HP for kill the monster, case is False so that our game is over.
                                else:
                                    case=False
                                    task_list = []
                                    break
                        elif how=="pegasus":
                            if (hour_p*15)>= pegasus:
                            # with this condition we show the user that foot is false option. we asked again till the gatting valid input,"foot"
                                print("Pegasus does not have  enough HP!")
                                continue
                            
                            else:
                                pegasus = go_war_pegasus(pegasus, distance_p)  # I returned the values with calling the  funtion(I defined at line 42)  and assinged(uptated.)         
                                time = time__pegasus(distance_p, time)  # I returned the values with calling the  funtion(I defined at line 38)  and assinged(uptated.)
                                print("Time passed: {} hour\n".format(int(time)))     
                                
                                 # after this, we looking at if our hero have enough HP for kill the monster.
                                # if it is not, game is over.
                                if int(task_list[index][3])>hero:
                                    case=False
                                    break
                                else:
                                    hero =hero_attack(hero, index, task_list) # I called the hero_attack funciton for doing the task.                               
                                    print(f"Remaining HP for Hero: {int(hero)} ")
                                    print(f"Remaining HP for Pegasus: {int(pegasus)} \n")
                                    task_list = remove_task(task_list[index], task_list) # I called the remove_task funciton for removing the task. 
                                    break
                    else:
                        print("Invalid input")
                        
                        
            while case1:  # After ending the another loop, we start this one with while True (because case1==True.)  
                if case == False : # We use our variable named case for ending this loop at the beginning.(Because if case==False that means game is over.)
                    break
                
                elif hero<(int(distance_f/20)*10) and pegasus <int((distance_p/50)*15): #  i looked for conditions that can be reason for losing...
                     case1 = False
                     break
                elif pegasus <int((distance_p/50)*15) and distance_f == -1:
                    case1 = False
                    break
                else:
                    # if case's and case1's values are still equal to True, i asked to user how to go home.
                    how_home = input("How do you want to go home?(Foot/Pegasus)").lower()
                    if how_home == "foot" or how_home == "pegasus": # i firstly find out if our input is "foot" or "pegasus". Otherwise it is invalid and asked till getting valid input.
                        if how_home == "foot":
                            if distance_f == -1: 
                                # with this condition we show the user that foot is false option. we asked again till the gatting valid input,"pegasus"
                                print("You can not go there by foot!")
                                continue
                            else:
                                if hero< (int(distance_f)/20)*10:
                                    print("Hero does not have enough HP.")
                                    continue
                                else:
                                    hero = back_home_foot(distance_f, hero) # I returned the values with calling the  funtions and assinged(uptated.)
                                    time = time__hero(time, distance_f) # I returned the values with calling the  funtions and assinged(uptated.)
                                    print("Time passed: {} hour\n".format(int(time)))
                                    print("Remaning HP for Hero:",int(hero))
                                    print(f"Remaining HP for Pegasus: {int(pegasus)} \n")
                                    break
                        elif how_home == "pegasus":
                                    if pegasus<(int(distance_p)/50)*15:
                                        print("Pegasus does not have enough HP.")       
                                    else:
                                        pegasus = back_home_pegasus(pegasus, distance_p) # I returned the values with calling the  funtions and assinged(uptated.)
                                        time =  time__pegasus(distance_p, time) # I returned the values with calling the  funtions and assinged(uptated.)
                                        print("Time passed: {} hour\n".format(int(time)))
                                        print("Remaning HP for Hero:",int(hero))
                                        print(f"Remaining HP for Pegasus: {int(pegasus)} \n")
                                        break
                    else:
                        print("Invalid option")#The input must be pegasus or foot, otherwise question is asked forever.                         
                        
game(task_list) # And finally i called the main funciton so that game is started.
                    

                
                
                
                
                
                
                
                
                
                
                
                
                
                
                
                
                
                
                
                
                
                
                
                
                
                
                
                
                
                
                
                
                
                
                
                
                
                