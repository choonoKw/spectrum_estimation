function Px = music(x, p, M)
% Multiple Signal Classification (MUSIC)
    x = x(:);
    if M<p+1 || length(x)<M, error('Size of R is inappropriate'), end
    H = corrmtx(x, M);
    R = H'*H;
    [v, d] = eig(R);
    [~, i] = sort(diag(d));
    Px = 0;
    for j=1:M-p
        Px = Px + abs(fft(v(:,i(j)), 1024));
    end
    Px = -20*log10(Px);
end