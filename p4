# -*- coding: utf-8 -*-
"""
Created on Tue Aug 15 20:10:08 2017

Project Euler
Problem 4

@author: jon anderson
"""

def ispalindrome(n):
    nl = len(str(n))
    if nl%2 != 0 :
        return False
    for i in range(int(nl/2)):       
        if int(str(n)[i]) != int(str(n)[nl-1-i]):
            return False
    return True

highestpal = 0
highesti = 0
highestj = 0
pal=[]
palargi=[]
palargj=[]
for i in range(999,100,-1):
    for j in range(i,100,-1):
         if ispalindrome(i*j):
             pal.append(i*j)
             palargi.append(i)
             palargj.append(j)
             if i*j > highestpal:
                 highestpal = i*j
                 highestj = j
                 highesti = i

import matplotlib.pyplot as plt
plt.plot(pal)
pal.sort()
plt.plot(pal)
plt.show()

plt.plot(palargi)
plt.plot(palargj)
plt.show()
