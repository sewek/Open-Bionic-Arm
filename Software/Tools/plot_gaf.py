"""
=====================
Gramian Angular Field
=====================

This example shows how you can transform a time series into a Gramian Angular
Field using :class:`pyts.image.GramianAngularField`. Two methods are
available: Gramian Angular Summation Field and Gramian Angular Difference
Field.
"""

import numpy as np
import matplotlib.pyplot as plt
from mpl_toolkits.axes_grid1 import ImageGrid
from pyts.image import GramianAngularField

X = [[0.02, -0.03, 0.02, -0.07, 0.02, 0.01, 0.1, 0.49, 0.68, 0.87, 0.9, 0.8, 0.2], [1,1,1,1,1,1,1,1,1,1,1,1,1]]
# Toy dataset


# Transform the time series into Gramian Angular Fields
gasf = GramianAngularField(image_size=13, method='summation')
X_gasf = gasf.fit_transform(X)
gadf = GramianAngularField(image_size=13, method='difference')
X_gadf = gadf.fit_transform(X)

# Show the images for the first time series
fig = plt.figure(figsize=(12, 7))
grid = ImageGrid(fig, 111,
                 nrows_ncols=(1, 2),
                 axes_pad=0.15,
                 share_all=True,
                 cbar_location="right",
                 cbar_mode="single",
                 cbar_size="7%",
                 cbar_pad=0.3,
                 )
images = [X_gasf[0], X_gadf[0]]
titles = ['Gramian Angular Summation Field',
          'Gramian Angular Difference Field']
for image, title, ax in zip(images, titles, grid):
    im = ax.imshow(image, cmap='rainbow', origin='lower')
    ax.set_title(title)
ax.cax.colorbar(im)
ax.cax.toggle_label(True)
plt.show()
