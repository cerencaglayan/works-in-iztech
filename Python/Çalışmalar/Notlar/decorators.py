
import time

def timeCalc(func):
    def wrapper(numbers):
        start = time.time()
        bitiş=time.time()
        print(func.__name__  +" "+str(bitiş-start))
        return bitiş-start
    
    return wrapper


@timeCalc
def squareCalc(numbers):
    liste=[]
    for i in numbers:
        liste.append(i**2)

    return liste


@timeCalc

def cubeCalc(numbers):
    liste=[]
    for i in numbers:
        liste.append(i**3)

    return liste

#cubeCalc(range(10000))
###############################################################################
    
def perfect(func):

    def wrapper(numbers):
        for a in numbers:
            summation=0
            for number in range(1,a+1):
                if a%number==0:summation+=number
            if summation==a*2:
                print(str(a)+"is a perfect number")
        func(numbers)

    return wrapper



@perfect
def asalCalc(numbers):

    for number in numbers:
        i = 2
        count=0

        for a in range(2,number+1):
            
            while(i<number):

                if number%i==0:
                    count+=1
                i+=1
                            
        if count==0 and number!=0:
            print(str(number)+" is asal ")          
                                
asalCalc([i for i in range(100)])
    
    
            
            
            
            
            
            
            
            
            
            
            
            
            
            
            
            
            