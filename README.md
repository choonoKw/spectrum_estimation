# DOA Estimation Interpreted as Frequency Estimation
For an antenna array, particularly a uniform linear array (ULA), the received signals from different directions can be modeled as delayed versions of the original transmitted signal, with the delay being dependent on the angle of arrival. The spatial frequency corresponds to the rate at which the signal’s phase changes across the array elements, and this is directly related to the angle of arrival (DOA). 

# Algorithms for Frequency Estimation
## Eigendecomposition of the Autocorrelation Matrix
Let's assume that the received signal is summation of the frequency of the complex exponential signals and white noise. If we compute the autocorrelation matrix of the received signal, the estimated frequencies are the coefficients of the eigenvectors that is corresponding to the maximum eigenvalues of the autocorrelation matrix.

## Pisarenko Harmonic Decomposition
Pisarenko considered the problem of estimating the frequencies of a sum of complex exponentials in white noise. The frequencies of the complex exponentials may be extracted from the roots of the eigenfilter. Based on the theorem, one can form the frequency estimation function, which is also called pseudospectrum.

## MUSIC Algorithm
Like Pisarenko's method, the MUSIC algorithm is a frequency estimation technique. MUSIC method divide the eigenvalues of the correlation matirx (size: _M_ X _M_) into two groups: the p signal eigenvectors corresponding to the p largest eigenvalues, $$x+1$$ $x+1$
