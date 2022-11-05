import numpy as np
import matplotlib.pyplot as plt

plt.style.use('ggplot')
#plt.figue(figsize=(20,10))

N=50000 # number of steps
T=1.5    # simulation time in seconds

c = 100 * 10**(-3)
# v = 5
i= 5 * 10 ** (-3)
r = 2

t = np.empty(N)
Vc = np.empty(N)
Ic = np.empty(N)

dt=T/N;

# initial values
Vc[0]=0
Ic[0]=i

for k in range(0,N-1):
	Vc[k+1]=Vc[k]-dt*Vc[k]/(r*c)+i*dt/c
	Ic[k+1]=c*(Vc[k+1]-Vc[k])/dt
	t[k+1]=t[k]+dt
	

plt.plot(t,Vc,label='Capacitor Voltage')
plt.plot(t,Ic,label='Capacitor Current')

print("tau=RC=",round(r*c,6))
print("Vc(5tau) (Percentage) =",round(Vc[int(5*r*c/T*N)],12)/(i*r)*100)
print("Vc(5tau) Theoretical =",(1-np.exp(-5))*100)

plt.xlabel('Time (s)')
plt.title('RC circuit')
plt.legend()
plt.show()