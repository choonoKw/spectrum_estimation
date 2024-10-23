# DOA Estimation Interpreted as Frequency Estimation
For an antenna array, particularly a uniform linear array (ULA), the received signals from different directions can be modeled as delayed versions of the original transmitted signal, with the delay being dependent on the angle of arrival. The spatial frequency corresponds to the rate at which the signal’s phase changes across the array elements, and this is directly related to the angle of arrival (DOA). 

# Algorithms for Frequency Estimation
## Eigendecomposition of the Autocorrelation Matrix
Let's assume that the received signal is summation of the frequency of the complex exponential signals and white noise. If we compute the autocorrelation matrix of the received signal, the estimated frequencies are the coefficients of the eigenvectors that is corresponding to the maximum eigenvalues of the autocorrelation matrix.

## Pisarenko Harmonic Decomposition (PHD)
Pisarenko considered the problem of estimating the frequencies of a sum of complex exponentials in white noise. The frequencies of the complex exponentials may be extracted from the roots of the eigenfilter. Based on the theorem, one can form the frequency estimation function, which is also called pseudospectrum.

## MUSIC Algorithm
Like Pisarenko's method, the MUSIC algorithm is a frequency estimation technique. MUSIC method divide the eigenvalues of the correlation matirx ![x](https://latex.codecogs.com/svg.image?\mathbf{R_x}\in\mathbb{C}^{M\times&space;M}) into two groups: the $p$ signal eigenvectors corresponding to the $p$ largest eigenvalues, and the $M-p$ noise eigenvectors (with the smallest eigenvalues) that, ideally, have eigenvalues equal to $\sigma_\omega^2$. 

The frequency estimation function of MUSIC, where the effects of spurious peaks are reduced by averaging, is defined as
![Equation](https://latex.codecogs.com/png.latex?\hat{P}_{MU}(e^{jw})=\frac{1}{\sum_{i=p+1}^M|\mathbf{e}^H\mathbf{v_i}|^2})

where  ![x](https://latex.codecogs.com/svg.image?\mathbf{e}=[e_0,...,e_{M-1}]) with ![x](https://latex.codecogs.com/svg.image?e_k=e^{jk\omega}), and ![x](https://latex.codecogs.com/svg.image?\mathbf{v}_i) is the eigenvector corresponding to the $i$-th largest eigenvalue.

The frequencies of the complex exponentials are then taken as the locations of the $p$ largest peaks in ![x](https://latex.codecogs.com/svg.image?\hat{P}_{MU}(e^{jw})).

# Description for Using the Codes
## freq_est_phd.m
This function code takes the received signal ![x](https://latex.codecogs.com/svg.image?\mathbf{x}) and the model order ![x](https://latex.codecogs.com/svg.image?p) as input and provides the frequencies estimated using PHD method. 

## music.m
This function codes takses the received signal ![x](https://latex.codecogs.com/svg.image?\mathbf{x}), the model order ![x](https://latex.codecogs.com/svg.image?p), and the sample length ![x](https://latex.codecogs.com/svg.image?M) as input. This function returns the estimated spectrum ![x](https://latex.codecogs.com/svg.image?\hat{P}_{MU}(e^{jw})).

## phd.m
This function code takes the received signal ![x](https://latex.codecogs.com/svg.image?\mathbf{x}) and the model order ![x](https://latex.codecogs.com/svg.image?p) as input and provides the eigenvector of the correlation matrix ![x](https://latex.codecogs.com/svg.image?\mathbf{R_x}) corresponding to the smallest eigenvalue and the estimated noise variance ![x](https://latex.codecogs.com/svg.image?\sigma_\omega^2).

## script.mlx
This MATLAB Live Script provides the example of estimating the frequencies from the received signal that includes these sinusoidal signals and white Gaussian noise. It shows the plot of the spectrums estimated using PHD and MUSIC respectively.
<img src="https://github.com/user-attachments/assets/791587e1-2e7a-49f5-8f59-21d9c7987af1" width="500">


