#270201059

import numpy as np
from matplotlib import pyplot as plt

# Part a (Inverse Transform Method)
U = []
Xa = []
av_Xa = []
vr_Xa = []

# Populate the given arrays.
for a in range(50000):
    U.append(np.random.rand())
    Xa.append(U[-1]**(1/2))
    av_Xa.append(np.mean(Xa))
    vr_Xa.append(np.var(Xa))
   

# Inspect the following plots.
plt.figure()
for i in range(len(Xa)):
    plt.plot([Xa[i],U[i]],[1,1.2])


plt.figure()
hU = plt.hist(U,100,alpha=0.5,density=True)
hXa = plt.hist(Xa,100,alpha=0.5,density=True)

plt.figure()

plt.plot(np.cumsum(hU[0]))
plt.plot(np.cumsum(hXa[0])) 


# Plot the average and variance values.
plt.figure()
plt.title("Averages for part a")
plt.plot([i for i in range(50000)],av_Xa)

plt.figure()
plt.title("Variances for part a")
plt.plot([i for i in range(50000)],vr_Xa)


# Part b (Rejection Method)


Xb = []
av_Xb = []
vr_Xb = []

def pdf(x):
    if 0<=x<=1:
        fx=2*x
    else:
        fx=0
    return fx
    
for a in range(50000):
    a,b = 0,1
    c = 3
    u,v = np.random.rand(),np.random.rand()
    x=(b-a)*u+a
    y = c*v
    if y<= pdf(x):
        Xb.append(x)
    if  (len(Xb) != 0 ):
        av_Xb.append(np.mean(Xb))
        vr_Xb.append(np.var(Xb))
    


# Inspect the following plots.
plt.figure()
hXb = plt.hist(Xb,100,density=True)

plt.figure()
plt.plot(np.cumsum(hXb[0]))

# Plot the average and variance values.
plt.figure()
plt.title("Averages for part b")
plt.plot([i for i in range((len(av_Xb)))],av_Xb)

plt.figure()
plt.title("Variances for part b")
plt.plot(   [i for i in range((len(vr_Xb)))    ],vr_Xb)
plt.show()
