# %%
import numpy as np
from matplotlib import pyplot as plt
import random

# Ceren Çağlayan 270201059

# I plotted " pi vs pi' "s end of the simulation (starts at line 125)

# Theoretical Possibilities

# p1 : The probability that at least one dice is 3.
theoretical_p1 = 1 - ((5 / 6) ** 5)
# EXPLANATION:
"""
  Formula for theoretical_p1 P1(A): P1(A)+P1(A')=1 ==> 1-P1(A') is unwanted probability.
  P1(A'): none of dices that are thrown 3.
  for every dice, probability of dice is not 3 = 5/6.
  we have 5 dices : (5/6)*(5/6)*(5/6)*(5/6)*(5/6) states P1(A').

  answer : 1 - ((5/6)**5)

"""

# p2:The probability that at least one dice is 3 given one of the dice is even.
theoretical_p2 = 1 - ((5 / 6) ** 4)
# EXPLANATION:
"""
  Formula for theoretical_p2 P2(A): P2(A)+P2(A')=1 ==> 1-P2(A') is unwanted probability.
  P2(A'): none of dices that are thrown 3.
  We know that one dice is even,that means possibility
  of that dice is not 3 is = 1.

  for another dices, probability of dice is not 3 = 5/6.
  we have one even + 4 other dices : 1*(5/6)*(5/6)*(5/6)*(5/6) states P2(A').

  answer : 1 - ((5/6)**4)

"""

# p3:The probability that at least one dice is 3 given only one of the dice is even.
theoretical_p3 = 1 - ((2 / 3) ** 4)
# EXPLANATION:
"""
  Formula for theoretical_p3  P3(A): P3(A)+P3(A')=1 ==> 1-P3(A') is unwanted probability.
  P3(A'): none of dices that are thrown 3.
  We know that one dice is even,that means possibility
  of that dice is not 3 is = 1.
  We also know that others are odd, that means 
  dices can be 1 or 3 or 5.
  for odd dices, probability of dice is not 3 = 2/3.
  we have one even and 4 odd dices : 1*(2/3)*(2/3)*(2/3)*(2/3) states P3(A').

  answer : 1 - ((2/3)**4)

"""

# number of experiments
N = np.array([10, 50, 100, 500, 1000, 5000, 10000, 50000, 100000, 500000, 1000000])

dice = [1, 2, 3, 4, 5, 6]  # a single dice pattern that we will use for empirical

probs_p1, probs_p2, probs_p3 = [], [], []  # probability lists for each p' s .

# empirical for p1:
for n in N:

    has_three_count = 0

    for experiment in range(n):

        #  i created list for putting 5 dices that is rolling randomly.
        #  in line 61, dice is defined.
        dices_rolled = [random.choice(dice) for i in range(5)]

        if 3 in dices_rolled:
            has_three_count += 1

    probs_p1.append(has_three_count / n)  # appending results for plotting..

    print('Empirical probability for p1 ,number of experiment: {}: {:.4f} %'
          .format(n, probs_p1[-1] * 100))

print()

# empirical for p2:
for n in N:

    has_three_count = 0

    for experiment in range(n):

        dices_rolled = [random.choice(dice) for i in range(4)]  # for other 4 dices. same process as line 75.
        dices_rolled.append(random.choice([2, 4, 6]))  # for our even dice

        if 3 in dices_rolled:
            has_three_count += 1

    probs_p2.append(has_three_count / n)  # appending results for plotting..

    print('Empirical probability for p2 ,number of experiment: {}: {:.4f} %'
          .format(n, probs_p2[-1] * 100))

print()

# empirical for p3:
for n in N:
    has_three_count = 0

    for experiment in range(n):

        dices_rolled = [random.choice([1, 3, 5]) for i in range(4)]  # for other 4 dices that are odd.
        dices_rolled.append(random.choice([2, 4, 6]))  # for our even dice

        if 3 in dices_rolled:
            has_three_count += 1

    probs_p3.append(has_three_count / n)  # appending results for plotting..

    print('Empirical probability for p3 ,number of experiment: {}: {:.4f} %'
          .format(n, probs_p3[-1] * 100))

print("Plotting ...")

plt.plot(N, probs_p1, color="red", label=str(n))
plt.plot(N, probs_p2, color="blue", label=str(n))
plt.plot(N, probs_p3, color="orange", label=str(n))

plt.text(N[-1], theoretical_p1, "P1 and P1 ' ", color="red")
plt.text(N[-1], theoretical_p2, "P2 and P2 ' ", color="blue")
plt.text(N[-1], theoretical_p3, "P3 and P3 ' ", color="orange")

plt.axhline(y=theoretical_p1, color='red', linestyle='dotted')
plt.axhline(y=theoretical_p2, color='blue', linestyle='dotted')
plt.axhline(y=theoretical_p3, color='orange', linestyle='dotted')

plt.ylim(0, 1)
plt.xscale("log")
plt.title("Plots for our Pi's")
plt.xlabel("Number of Experiments")
plt.ylabel("Probabilities")
plt.show()
