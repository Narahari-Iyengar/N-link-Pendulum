%n-link pendulum - Lagrange method
clear all
clc;

n=input('Enter the number of links: ');
 for i=1:n
        p.d(i)=0.5;
        p.m(i)=1;
        p.I(i)=0.2;
        p.g=1;
        p.th(i)=pi/2;
        p.thd(i)=0;
 end
    
 for i=1:n-1
        p.l(i)=1;
 end
l(n)=1;

p.n=n;

rate = 10; 
dur   = 30; 
ntimes = dur*rate;
tspan = linspace(0,dur,ntimes);

for i=1:n
    th(i)=p.th(i);
    thd(i)=p.thd(i);
end
z0=[th';thd'];


small = 1e-8;
options = odeset('RelTol', small , 'AbsTol', small );
nlinkpend_Lagrange_derivation(p);
f=@(t,z)nlinkpend_Lagrange_rhsfile(t,z,p);
[tarray, zarray] = ode45(f,tspan, z0,options);

 for i=1:n
        d(i)=p.d(i);
        m(i)=p.m(i);
        I(i)=p.I(i);
        g=p.g;
        th=p.th(i);
        thd=p.thd;
    end
    
    for i=1:n-1
        l(i)=p.l(i);
    end
    tempx=0;x=[];
    tempy=0;y=[];
    for i=1:n
        tempx=tempx+l(i)*sin(zarray(:,i));
        x=[x,tempx];
        tempy=tempy-l(i)*cos(zarray(:,i));
        y=[y,tempy];
    end
    x=[zeros(ntimes,1),x];
    y=[zeros(ntimes,1),y];
    
    l_total=sum(l);
    for i = 1:ntimes
        figure(1)
        plot(x(i,:),y(i,:),'LineWidth', 5)  
        axis equal
        axis([-l_total l_total -l_total l_total])
        xlabel('x-axis');
        ylabel('y-axis');
        str = sprintf('%d link pendulum using Lagrange equations', n);
        title(str);
        pause(.01)
        shg   
    end
    total_energy=[];
    for i=1:ntimes
        q.th=zarray(i,1:n)
        q.dth=zarray(i,n+1:2*n)
        total_energy(i) = nlinkpend_Energy(q);
    end
  