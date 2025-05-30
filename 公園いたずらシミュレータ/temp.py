from Lib import *
from PIL import ImageFont, ImageDraw, Image, ImageFilter
import numpy as np
from scipy.optimize import curve_fit

img = Image.open("font\\font5#31911.png")

x = 11

rs = []
gs = []
bs = []

for y in range(6, 32):
    r, g, b, a = img.getpixel((x, y))
    rs.append(r)
    gs.append(g)
    bs.append(b)

import matplotlib.pyplot as plt

# Create y values for plotting
y_values = list(range(6, 32))

# Define a function for curve fitting (polynomial)
def func(x, a, b, c):
    return a * x**2 + b * x + c

# Create figure for plotting
plt.figure(figsize=(12, 8))

# Plot and fit R values
plt.subplot(3, 1, 1)
plt.scatter(y_values, rs, color='red', label='R values')
popt_r, _ = curve_fit(func, y_values, rs)
y_fit = np.linspace(min(y_values), max(y_values), 100)
plt.plot(y_fit, func(y_fit, *popt_r), 'r-', label=f'Fit: {popt_r[0]:.6f}x² + {popt_r[1]:.6f}x + {popt_r[2]:.6f}')
print(f'Fit: {popt_r[0]:.6f}x² + {popt_r[1]:.6f}x + {popt_r[2]:.6f}')
plt.legend()
plt.title('R values vs y')

# Plot and fit G values
plt.subplot(3, 1, 2)
plt.scatter(y_values, gs, color='green', label='G values')
popt_g, _ = curve_fit(func, y_values, gs)
plt.plot(y_fit, func(y_fit, *popt_g), 'g-', label=f'Fit: {popt_g[0]:.6f}x² + {popt_g[1]:.6f}x + {popt_g[2]:.6f}')
print(f'Fit: {popt_g[0]:.6f}x² + {popt_g[1]:.6f}x + {popt_g[2]:.6f}')
plt.legend()
plt.title('G values vs y')

# Plot and fit B values
plt.subplot(3, 1, 3)
plt.scatter(y_values, bs, color='blue', label='B values')
popt_b, _ = curve_fit(func, y_values, bs)
plt.plot(y_fit, func(y_fit, *popt_b), 'b-', label=f'Fit: {popt_b[0]:.6f}x² + {popt_b[1]:.6f}x + {popt_b[2]:.6f}')
print(f'Fit: {popt_b[0]:.6f}x² + {popt_b[1]:.6f}x + {popt_b[2]:.6f}')
plt.legend()
plt.title('B values vs y')

plt.tight_layout()
plt.show()