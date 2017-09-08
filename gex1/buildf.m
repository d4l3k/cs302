function f=buildf(N)

    % spatial points in x- and y-direction
    x=0:1/N:1; y=x;
    f=sin(pi*x)'*sin(pi*y);
    
    % build right-hand side
    f=reshape(f(2:N,2:N),(N-1)^2,1);

end