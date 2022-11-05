#düzeltilmiş hali.

def pairstar(string,a):
    
    if  len(string) == 1:
         return string
    else:
        string = string.lower()
        if string[0] == string[a]:
            
            return string[0] + "*" + pairstar(string[1:],a)
        
        else:
        
            
            return string[0] + pairstar(string[1:],a)
    
    
    
    
print(pairstar("hello", 1))
    











