# CGProj

Everything in this version if written in Matlab; I do a lot of my editing in Jupyter notebooks using `https://github.com/Calysto/matlab_kernel`.

The main function in here is `CGpipeline.m`, but the easiest way to go through an example is currently to open `CGpipeline_SanityChecks.ipynb`. Below I explain each of these steps, and why I'm doing them.


### Using `CGpipeline_SanityChecks.ipynb`

The data (included) can be downloaded from `https://figshare.com/articles/bint_fishmovie32_100_mat/5009840`. It is a 3D array consisting of binned recordings (each element takes on the value 0 or 1) of 160 different neurons for 953 time steps, repeated 267 times. The first thing we do is to load this data and place it into a few different data structures.