class Kareler():
    def __init__(self,maximum):
        self.maximum = maximum
        self.index = 0
        
    def __str__(self):
        print("Başlıyoruz")
        
    def __iter__(self):
        return self
    
    def __next__(self):
        self.index+=1
        if self.index<=self.maximum:
            return self.index**2
        else:
            raise StopIteration
            
kareler = Kareler(5)
ite = iter(kareler)


def asal():
    for a in range(1,1001):
        if a==1 or a==2 or a==3:
            yield a
        else:
            for number in range(2,a+1):
                if a%number==0 and a!= number:
                    break
                elif number==a:
                    yield a
                    
                    
                    
generator = asal()
it = iter(generator)