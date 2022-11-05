#Ceren Çağlayan 270201059

import numpy as np
from matplotlib import pyplot as plt


#part a

"""
I already explained where the theta estimations came from in my report.

"""
def MoM(x):
    return np.mean(x)/2

def MLE(x):
    return min(x)

X = [0.3, 0.6, 0.8, 0.9]

theta_MoM = MoM(X)

theta_MLE = MLE(X)

print("MoM estimate for the sample is :",theta_MoM)
print("MLE estimate for the sample is :",theta_MLE)


#part b
U = [] #u values for standart uniform distributed values
Xa = [] #x values for F^-1(u)
for a in range(10000):
    U.append(np.random.rand())
    Xa.append(2.4 / (1-U[-1])**(1/2))
 

#part c
N = [1,2,3,4,5,10,50,100,500,1000]

mom=[]
mle=[]


def partc(P,N):
    
    for b in range(10000):
        sample=[]

        for a in range(N):
            
            rand = np.random.random_integers(N)
            
            sample.append(P[rand])
            
      
        mom.append(MoM(sample))
        mle.append(MLE(sample))
    return np.mean(mom),np.mean(mle),np.std(mom),np.std(mle)
        
for a in N:
    MoM_Mean,MLE_Mean,Mom_std,MLE_std=partc(Xa, a)
        
plt.hist(mom,density=True,bins=100,alpha=0.5)
plt.hist(mle,density=True,bins=100,alpha=0.5)
plt.show()

    
    
