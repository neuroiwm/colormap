# -*- coding: utf-8 -*-
"""
Spyder Editor

This is a temporary script file.
"""

import scipy.io
import matplotlib.pyplot as plt

mat=scipy.io.loadmat('childFace.mat')
childFace=mat.get("childFace")
plt.imshow(childFace)
plt.colorbar()
plt.savefig('childFace.png')
plt.show()

