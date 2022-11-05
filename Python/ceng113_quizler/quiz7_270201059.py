password = "abc123"
error = 0
while True:
    ask = input("Enter the password:")

    if ask == password:
        print("You have successfully logged in")
        break
    else:
        print("Sorry,the password is wrong")
        
        error += 1
        if error == 3:
            
            print("You have been denied access")
            break
        else:
            continue


























