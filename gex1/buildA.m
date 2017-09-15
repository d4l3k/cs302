function A=buildA(N)

    dx=1/N;        % spatial mesh size  
    nvar=(N-1)^2;  % number of unknowns
    
    % build matrix A
    e1= ones(nvar,1);
    e2=e1; e2( 1:N-1:nvar)=0;
    e3=e1; e3(N-1:N-1:nvar)=0;
    A=spdiags([-e1 4*e1 -e1],-(N-1):N-1:N-1,nvar,nvar) ...
       +spdiags([-e3 -e2], -1: 2 : 1,nvar,nvar);
    A=A/dx^2;

end