function [vmin,sigma] = phd(x,p)
% Pisarenko Harmonic Decomposition
    x = x(:);
    H = corrmtx(x, p+1);
    R = H'*H;
    [v, d] = eig(R);
    sigma = min(diag(d));
    index = find(diag(d)==sigma);
    vmin = v(:,index); %#ok<FNDSB> 
end