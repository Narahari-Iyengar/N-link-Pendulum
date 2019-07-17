function zdot=nlinkpend_Euler_rhsfile(t,z,p)

names = fieldnames(p);
for i=1:length(names)
  eval([names{i} '= p.' names{i} ';' ]);
end

for i=1:n
    th(i)=z(i);
    thd(i)=z(n+i);
end

thds=thd';

M = nlinkpend_Euler_M(I, l, d, g, m, thd, th);
b = nlinkpend_Euler_b(I, l, d, g, m, thd, th);

thdds=M\b;
zdot=[thds; thdds];
end
