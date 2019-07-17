function nlinkpend_DAE_derivation(p)
syms t n g

n=p.n;
% n=4;

m=sym('m',[1,n]);
xg=sym('xg',[1,n]);xgd=sym('xgd',[1,n]);
yg=sym('yg',[1,n]);ygd=sym('ygd',[1,n]);
Rx=sym('Rx',[1,n]);xgdd=sym('xgdd',[1,n]);
Ry=sym('Ry',[1,n]);ygdd=sym('ygdd',[1,n]);
d=sym('d',[1,n]);
l=sym('l',[1,n]); I=sym('I',[1,n]); 
th=sym('th',[1,n]); thd=sym('thd',[1,n]); 
thdd=sym('thdd',[1,n]);
tempc1=sym(zeros(1,n));
tempc2=sym(zeros(1,n));

eqns_L=sym([]);
eqns_A=sym([]);
eqns_C=sym([]);

for s=1:n
    if(s==1)
        eqns_L(1,1) = -m(1)*xgdd(1) + m(1)*g - Rx(1) - Rx(2);
            eqns_L(1,2) = -m(1)*ygdd(1) - Ry(1) - Ry(2);
            eqns_A(1) = -d(1)*(Rx(1)*sin(th(1)) - Ry(1)*cos(th(1)))...
                - (l(1) - d(1))*(Ry(2)*cos(th(1)) - Rx(2)*sin(th(1)))...
                - I(1)*thdd(1);
            xe(1) = l(1)*cos(th(1));

            eqns_C(1,1)=xgdd(1)+d(1)*cos(th(1))*(thd(1).^2)...
                        +d(1)*sin(th(1))*thdd(1);
            eqns_C(1,2)=ygdd(1)+d(1)*sin(th(1))*(thd(1).^2)...
                         -d(1)*cos(th(1))*thdd(1);
    else
        if(s<n)
            eqns_L(s,1) = -m(s)*xgdd(s) + m(s)*g...
                        + Rx(s) - Rx(s+1);
                    eqns_L(s,2) = -m(s)*ygdd(s) + Ry(s) - Ry(s+1);
                    eqns_A(s) = -d(s)*(Ry(s)*cos(th(s))...
                        - Rx(s)*sin(th(s)))...
                        - (l(s) - d(s))*(Ry(s+1)*cos(th(s))...
                        - Rx(s+1)*sin(th(s)))...
                        - I(s)*thdd(s);
                else
                    eqns_L(n,1) = -m(n)*xgdd(n) + m(n)*g + Rx(n);
                    eqns_L(n,2) = -m(n)*ygdd(n) + Ry(n);
                    eqns_A(n) = -d(n)*(Ry(n)*cos(th(n))...
                        - Rx(n)*sin(th(n)))...
                        - I(n)*thdd(n);
                end

                tempc1(s-1)=tempc1(s-1)+d(s-1)*cos(th(s-1))*(thd(s-1).^2)...
                        +d(s-1)*sin(th(s-1))*thdd(s-1)+xgdd(s-1)-l(s-1)*cos(th(s-1))*(thd(s-1).^2)...
                        -l(s-1)*sin(th(s-1))*thdd(s-1);
                eqns_C(s,1)=xgdd(s)-tempc1(s-1)+d(s)*cos(th(s))*(thd(s).^2)...
                        +d(s)*sin(th(s))*thdd(s);
                tempc2(s-1)=tempc2(s-1)+d(s-1)*sin(th(s-1))*(thd(s-1).^2)...
                         -d(s-1)*cos(th(s-1))*thdd(s-1)+ygdd(s-1)-l(s-1)*sin(th(s-1))*(thd(s-1).^2)...
                         +l(s-1)*cos(th(s-1))*thdd(s-1);
                eqns_C(s,2)=ygdd(s)-tempc2(s-1)+d(s)*sin(th(s))*(thd(s).^2)...
                         -d(s)*cos(th(s))*thdd(s);
            end
end
eqns = [reshape(eqns_L,[2*n 1]); eqns_A.'; reshape(eqns_C,[2*n 1])];
unknowns=[xgdd,ygdd,thdd,Rx,Ry];

[M,b] = equationsToMatrix(eqns,unknowns);
matlabFunction(M,'file','nlinkpend_DAE_M','Vars',{[I] [l] [d] g [m] [thd] [th]});
matlabFunction(b,'file','nlinkpend_DAE_b','Vars',{[I] [l] [d] g [m] [thd] [th]});
end