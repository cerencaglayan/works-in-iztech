def read(persons,passwords,friends): 
    file = "users.txt"
    a = open(file,"r",encoding="utf-8")
    for q in a.readlines():
        a1 = q.split(";")
        if a1[0] not in persons :
            persons.append(a1[0])
            passwords.append(a1[1])
            friends.append(a1[2][:-1])
    a.close()                       
def log_in_change_user(passwords,persons):
    user1 = input("Please enter username:\n")
    password1 = input("Please enter password:\n")
    if user1 in persons:
        if str(password1) == str(passwords[persons.index(user1)]):
            print("Logged in\n")
            return user1              
        else:
            print("Wrong password or username")
            print("")
            return ""
    else:
        print("Wrong password or username")
        print("")
        return ""
def validate_usernames(user,persons):
    valid_letters_and_numbers = "abcdefgjijklmnopqrstuvwxyz1234567890"
    if user not in persons:
        for a in user:
            if a in valid_letters_and_numbers: 
                return True
            else:
                return ""
                break              
def validate_password(password):
    if 4<=len(password)<=8:
        count = 0
        for a in password:
            if a.isalpha() == True:
                count+=1
                break
        for a in password:
            if a.isnumeric() ==True:
                count+=1
                break
        if count ==2:
            return True 
def create_new_user(persons,passwords,friends):
    user = input("Please enter username:\n")
    if validate_usernames(user,persons) != True:
        print("Username  not valid\n")
    else:
        password = input("Please enter password:\n")
        if validate_password(password) != True:
            print("Password  not valid\n")  
        else:
            persons.append(user)
            passwords.append(password)
            friends.append("")
def add_friends(user1,persons,friends):
    new_friend = input("Please enter the name of your new friend:\n")
    if new_friend in persons:
        if friends[persons.index(user1)] =="":            
            friends[persons.index(user1)] = new_friend
        else:
            friends[persons.index(user1)] = friends[persons.index(user1)] +","+ new_friend
    else:
        print("Friend not found\n")    
def show_friends(user1,friends,persons):
    print(friends[persons.index(user1)]) 
def save(persons,passwords,friends):
    file = "users.txt"
    y = open(file,"w",encoding="utf-8")
    y.write("")
    y.close()
    b = open(file,"r+",encoding="utf-8")
    for q in range(len(persons)):
        b.write(persons[q]+";")
        b.write(passwords[q]+";")
        b.write(friends[q]+"\n")
    b.close()
def main():
    user1 = ""
    user_1 = ""
    persons,passwords,friends = [],[],[] 
    read(persons,passwords,friends)  
    while True:
        menu_text=input("1. Log in / change user\n2. Create new user\n3. Add friend\n4. Show my friends\n5. Exit\n")
        if menu_text == "1" :
            if user1 != "":
                user_1 = user1
                user1 =  log_in_change_user(passwords,persons)
                if user1 == "":
                    user1 = user_1
            else:
                user1 =  log_in_change_user(passwords,persons)              
        elif menu_text == "2":
            create_new_user(persons,passwords,friends)        
        elif menu_text =="3": 
            if user1 != "":
                 add_friends(user1,persons,friends)
            else:
                print("You need to log in first\n")  
        elif  menu_text =="4":
            if user1 != "":
                 show_friends(user1, friends, persons)
            else:
                print("You need to log in first\n")
        elif menu_text == "5":
            save(persons,passwords,friends)
            break
        else:
            print("Invalid option\n")
main()