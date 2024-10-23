function freq_est = freq_est_phd(x,p)
% frequency estimatation using Pisarenko Harmonic Decomposition
    [v_min,sigma] = phd(x,p); %#ok<ASGLU> 

    % Estimate frequencies from the roots of the polynomial
    roots_poly = roots(v_min);  % Find roots of the polynomial with coefficients from v_min
    freq_est = angle(roots_poly);  % Frequencies are the angles of the roots
    freq_est = sort(freq_est);  % Sort frequencies for clarity

    % Convert to normalized frequency (between 0 and pi)
    freq_est = mod(freq_est, 2 * pi)/pi;
end