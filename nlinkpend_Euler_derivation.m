function nlinkpend_Euler_derivation(p)

syms t n g
n=p.n;
m=sym('m',[1,n]); d=sym('d',[1,n]);
l=sym('l',[1,n]); I=sym('I',[1,n]); 
th=sym('th',[1,n]); thd=sym('thd',[1,n]); 
thdd=sym('thdd',[1,n]);

er=sym([]);
eth=sym([]);rgo=sym([]);
rga=sym([]);rba=sym([]);
rgiaj=sym([]);ago=sym([]);
aga=sym([]);aba=sym([]);
ma=sym([]);hda=sym([]);
eqns=sym([]);

i=[1 0 0];
j=[0 1 0];
k=cross(i,j);

templ=0; 
for s=1:n
    er(s,:)=i*cos(th(s))+j*sin(th(s));
    eth(s,:)=cross(k,er(s,:));
    
    rga(s,:)=d(s)*er(s,:);
    rba(s,:)=l(s)*er(s,:);
    rbg=rba-rga;
    
    rgo(s,:) = rga(s,:);
        if (s > 1)
            for sz = 1:(s-1)
                rgo(s,:) = rgo(s,:) + rba(sz,:);
            end
        end
        
%     templ=templ+rba(s,:);
%     rgo(s,:)=rga(s,:)+templ-rba(s,:);
%     rao(s,:)=templ;
end

for s=1:n
    aba(s,:)=cross(thdd(s)*k,rba(s,:))-thd(s).^2*rba(s,:);
    aga(s,:)=cross(thdd(s)*k,rga(s,:))-thd(s).^2*rga(s,:);
    ago(s,:)=aga(s,:);
    if s>1
        for sz=1:(s-1)
        ago(s,:)=ago(s,:)+aba(sz,:);
        end
    end
end

for s=i:n
    for sz=1:n
        rgiaj(s,:,sz)=rga(sz,:);
        if sz>1
            for kz=s:(sz-1)
                rgiaj(s,:,sz)=rgiaj(s,:,sz)+rba(kz,:);
            end
        end
    end
end

for s=1:n
    ma(s,:)=cross(rga(s,:),m(s)*g*i);
    hda(s,:)=m(s)*cross(rga(s,:),ago(s,:))...
        +I(s)*thdd(s)*k;
    if(s<n)
        for sz=(s+1):n
            ma(s,:)=ma(s,:)+cross(rgiaj(s,:,sz),m(sz)*g*i);
            hda(s,:)=hda(s,:)...
                +m(sz)*cross(rgiaj(s,:,sz),ago(sz,:))...
                +I(sz)*thdd(sz)*k;
        end
    end
end

for s=1:n
    eqns(s)=ma(s,3)-hda(s,3);
end

eqns=eqns.';
unknowns=thdd;

M=jacobian(eqns,unknowns);
b=simplify(M*unknowns.'-eqns);

matlabFunction(M,'file','nlinkpend_Euler_M','Vars',{[I] [l] [d] g [m] [thd] [th]});
matlabFunction(b,'file','nlinkpend_Euler_b','Vars',{[I] [l] [d] g [m] [thd] [th]});
end


