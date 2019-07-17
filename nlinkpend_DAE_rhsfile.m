function zdot=nlinkpend_DAE_rhsfile(t,z,p)

names = fieldnames(p);
for i=1:length(names)
  eval([names{i} '= p.' names{i} ';' ]); 
end

for i=1:n
    th(i)=z(i);
    thd(i)=z(n+i);
end

dots=[thd'];

M = nlinkpend_DAE_M(I, l, d, g, m, thd, th);
b = nlinkpend_DAE_b(I, l, d, g, m, thd, th);

a=M\b;
s=[];
for i=1:n
s=[s, a(2*n+i)];
end

zdot=[dots; s'];
end