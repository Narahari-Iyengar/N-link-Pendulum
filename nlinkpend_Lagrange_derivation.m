function nlinkpend_Lagrange_derivation(p)
syms g n
n=p.n;

m=sym('m',[1,n]); d=sym('d',[1,n]);
l=sym('l',[1,n]); I=sym('I',[1,n]); 
th=sym('th',[1,n]); thd=sym('thd',[1,n]); 
thdd=sym('thdd',[1,n]); v=sym('v',[1,n]);
KE=sym('KE',[1,n]);vel=sym('vel',[1,n]);

er=sym('er',[n,3]); eth=sym('eth',[n,3]);
rgo=sym('rgo',[n,3]);
rao=sym('rao',[n,3]);

i=[1 0 0];
j=[0 1 0];
k=cross(i,j);

templ=0; rao(1,:)=0;
tempv=0; KE=0; PE=0;
tempvel=0; tempPE=0;
tempKE=0;v=vel;

for s=1:n
    er(s,:)=i*cos(th(s))+ j*sin(th(s));
    eth(s,:)=cross(k,er(s,:));

    rga(s,:)=d(s)*er(s,:);
    rba(s,:)=l(s)*er(s,:);
    rbg=rba-rga;
    
    templ=templ+rba(s,:);
    rgo(s,:)=rga(s,:)+templ-rba(s,:);
    rao(s,:)=templ;
    
    tempv=tempv+rba(s,:).*thd(s);
    vgo(s,:)=rga(s,:).*thd(s)+tempv-rba(s,:).*thd(s);
    vao(s,:)=tempv;
    
    for sz=1:2
        tempvel=vgo(s,sz).*vgo(s,sz);
        vel(s)=vel(s)+tempvel;
    end
    vel(s)=vel(s)-v(s);
    tempKE=0.5*m(s)*vel(s)+0.5*I(s)*thd(s).^2;
    KE=KE+tempKE;
    
    tempPE=-m(s)*g*rgo(s,1);
    PE=PE+tempPE;
    
end

Lag=KE-PE;

dLdthetadots = jacobian(Lag, thd);

eqns =   jacobian(dLdthetadots,th)*thd.'  ...
       + jacobian(dLdthetadots,thd)*thdd.' ...
       - jacobian(Lag,th).';
   
[M,b]=equationsToMatrix(eqns,thdd);
matlabFunction(M,'file','nlinkpend_Lagrange_M','Vars',{[I] [l] [d] g [m] [thd] [th]});
matlabFunction(b,'file','nlinkpend_Lagrange_b','Vars',{[I] [l] [d] g [m] [thd] [th]});
end
