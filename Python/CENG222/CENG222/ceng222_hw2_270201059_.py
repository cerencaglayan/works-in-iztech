# %%

#270201059 Ceren Çağlayan 

import numpy as np
from matplotlib import pyplot as plt
import random

"""
 Probability Dentsity function
 x : our data
 mean : mean based on our x
 sd : standart deviation based on our x.
"""
def normal_dist_calculator(x , mean , sd):
    prob_density = (1/((2*np.pi)*(sd**2))**(1/2)) * (np.exp(-0.5*((x-mean)/sd)**2))
    return prob_density

#1
total1=[]
for a in range(0,200000):
    list1 = [np.random.random() for i in range(2)]
    total1.append(sum(list1))

#Theoritical values for exp1:

standartDeviation1 = np.std(total1)
variance1 = standartDeviation1**2
mean1 = np.mean(total1)
print("""For expriment 1: \n Mean : {} \n Standart Deviation : {} \n Variance {} \n""".format(mean1,standartDeviation1,variance1))
total1.sort()
theoritical_normal_distribution1 = normal_dist_calculator(total1,mean1,standartDeviation1)

plt.hist(total1,bins=100,density=True)
plt.plot(total1,theoritical_normal_distribution1, color = 'orange')

plt.title("Expected output for Experiment 1:")
plt.show()

#2
total2=[]
for a in range(0,200000):
    list2 = [np.random.random() for i in range(4)]
    total2.append(sum(list2))
  
#Theoritical values for exp2:

standartDeviation2 = np.std(total2)
mean2 = np.mean(total2)
variance2 = standartDeviation2**2
total2.sort()
theoritical_normal_distribution2 = normal_dist_calculator(total2,mean2,standartDeviation2)
print("""For expriment 2: \n Mean : {} \n Standart Deviation : {} \n Variance {} \n""".format(mean2,standartDeviation2,variance2 ))

plt.hist(total2,bins=100,density=True)
plt.plot(total2,theoritical_normal_distribution2, color = 'orange')

plt.title("Expected output for Experiment 2:")
plt.show()

#3
total3=[]
for a in range(0,200000):
    list3 = [np.random.random() for i in range(50)]
    total3.append(sum(list3))

#Theoritical values for exp3:

standartDeviation3 = np.std(total3)
mean3 = np.mean(total3)
variance3 = standartDeviation3**2
total3.sort()
theoritical_normal_distribution3 = normal_dist_calculator(total3,mean3,standartDeviation3)
print("""For expriment 3: \n Mean : {} \n Standart Deviation : {} \n Variance {} \n""".format(mean3,standartDeviation3,variance3 ))

plt.hist(total3,bins=100,density=True)
plt.plot(total3,theoritical_normal_distribution3, color = 'orange')

plt.title("Expected output for Experiment 3:")
plt.show()

#4
total4=[]
range_low,range_max=0,200
list4=[]
for a in range(0,200000):    
    for a in range(50):
        value = np.random.uniform(range_low,range_max)
        
        if value<99:
            range_low,range_max=0,200
        else : 
            range_low,range_max=98,102
        
        
        list4.append(value)
           
    total4.append(sum(list4))
    list4.clear()
    
#Theoritical and estimated values for exp4:

estimated_mean_for_4 = sum(total4)/200000
standartDeviation4 = np.std(total4)
variance4 = standartDeviation4**2
mean4 = np.mean(total4)
total4.sort()
theoritical_normal_distribution4 = normal_dist_calculator(total4,np.float64(estimated_mean_for_4),standartDeviation4)
print("""For expriment 4: \n Mean : {} \n Standart Deviation : {} \n Variance {} \n""".format(mean4,standartDeviation4,variance4 ))

plt.hist(total4,bins=100,density=True,label="Histogram for sums")
plt.plot(total4,theoritical_normal_distribution4, color = 'orange',label="Normal Distribution")

plt.title("The expected output for Experiment 4:")
plt.show()

#5
total5=[]
for a in range(0,200000):
    list5 = [np.random.uniform(random.uniform(0,1), random.uniform(0,1)) for a in range(50)]        
    total5.append(sum(list5))

#Theoritical and estimated values for exp5:
estimated_mean_for_5 =sum(total5)/200000
standartDeviation5 = np.std(total5)
mean5 = np.mean(total5)
variance5 = standartDeviation5**2
total5.sort()
theoritical_normal_distribution5 = normal_dist_calculator(total5,np.float64(estimated_mean_for_5),standartDeviation5)
print("""For expriment 5: \n Mean : {} \n Standart Deviation : {} \n Variance {} \n""".format(mean5,standartDeviation5,variance5 ))

plt.hist(total5,bins=100,density=True,label="Histogram for sums")
plt.plot(total5,theoritical_normal_distribution5, color = 'orange',label="Normal Distribution")

plt.title("Expected output for Experiment 5:")
plt.show()