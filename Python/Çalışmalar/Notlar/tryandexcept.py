"""
Created on Mon Jun 21 19:52:57 2021

@author: cerca

Try and Except blocks in Python
"""
""" 
try: the code with the exception(s) to catch.
If an exception is raised, it jumps straight into the except block.

except: this code is only executed if an exception occured in the try block. 
The except block is required with a try block, even if it contains only the pass statement

-After the except block, the program continues. Without a try-except block, the last line wouldn’t be reached 
as the program would crash.

-A try-except block can have the finally clause (optionally). The finally clause is always executed.

!!! For more : https://pythonbasics.org/try-except/ 
https://holypython.com/advanced-python-lessons/lesson-3-try-except/

"""

############################################################
#    liste = ["345","sadas","324a","14","kemal"]
#   
#  for a in liste:
#     try:
#        for b in a:
#               if b==str(int(b)):
#                  print(a)
#                 break
#    except:
#            print("No")
#            
#    #Solution 
#    liste = ["345","sadas","324a","14","kemal"]
#    
#    for eleman in liste:
#        
#       try: 
#           eleman = int(eleman) # Eğer hata ile karşılaşırsak burası hata verecek ve print çalışmayacak.
#            print(eleman)
#        except:
#            pass # pass deyimi bir blokun hiçbir şey yapmadığı anlamına geliyor. Python'ın hata vermemesi için kullanabilirsiniz.   
########################################################
def evenornot(number):
     if (number%2)==0:return number
     else: raise ValueError("This is not an even number")
# Solution 
def çift_mi(sayı):
    
    if (sayı % 2 == 0):
        return sayı
    else:
        raise ValueError
#liste = [34,2,1,3,33,100,61,1800]
#for i in liste:
#    try:
#        print(çift_mi(i))
#    except ValueError:
#        pass      
####################################################################
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        


        
        
        
        
        
        
        
        