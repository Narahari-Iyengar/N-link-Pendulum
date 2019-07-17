
%Main file for final project: Triple pendulum
%Narahari S Iyengar - nsi7
%MAE 5730 - Intermediate Dynamics
tic
clear all;
clc;

disp('MAE 5730 - Final Project:  n-link pendulum');
disp('Welcome. Please follow the instructions to run this program.');

method=input('Which method would you like to use to simulate the triple pendulum?\n 1. (N)ewton-Euler method \n 2. (D)AE method \n 3. (L)agrange method: ','s');

n=input('Enter the number of links: ');

saved_animations=input('Would you like to use pre-saved animations of the n-link pendulum\n 1.(Y)es \n 2.(N)o: ','s');

if saved_animations=='N'
    
user_input=input('Do you want to specify the properties of the pendulum?\n 1.(Y)es \n 2.(N)o: ','s');

if user_input=='N'
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
end

if user_input=='Y'
    p.l=input('Enter the lengths of the links: ');
    p.m=input('Enter the mass of the links: ');
    p.d=input('Enter the position of CoM: ');
    p.I=input('Enter the Moment of Intertia of links: ');
    p.g=input('Enter the acceleration due to gravity: ');
    p.th=input('Enter the initial angles of links wrt vertical: ');
    p.thd=input('Enter initial angular velocities of links: ');
end

p.n=n;

rate = 6; 
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

if isempty(method)
    method = 'N';
end

if method=='N'
    nlinkpend_Euler_derivation(p);
    f=@(t,z)nlinkpend_Euler_rhsfile(t,z,p);
    [tarray, zarray] = ode45(f,tspan, z0,options);
end

if method=='L'
    nlinkpend_Lagrange_derivation(p);
    f=@(t,z)nlinkpend_Lagrange_rhsfile(t,z,p);
    [tarray, zarray] = ode45(f,tspan, z0,options);
end

if method=='D'
    nlinkpend_DAE_derivation(p);
    f=@(t,z)nlinkpend_DAE_rhsfile(t,z,p);
    [tarray, zarray] = ode45(f,tspan, z0,options);
end
for i=1:n
        d(i)=p.d(i);
        m(i)=p.m(i);
        I(i)=p.I(i);
        g=p.g;
        th(i)=p.th(i);
        thd(i)=p.thd(i);
    end
    
    for i=1:n-1
        l(i)=p.l(i);
    end
    
    if user_input=='Y'
        l(n)=p.l(n);
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
    if method=='N'
        str = sprintf('%d link pendulum using Newton-Euler equations', n);
    end
    if method=='L'
        str = sprintf('%d link pendulum using Lagrange equations', n);
    end
    if method=='D'
        str = sprintf('%d link pendulum using DAEs', n);
    end
    
    for i = 1:ntimes
        figure(1)
        plot(x(i,:),y(i,:),'LineWidth', 5)  
        axis equal
        axis([-l_total l_total -l_total l_total])
        xlabel('x-axis');
        ylabel('y-axis');
        title(str);
        pause(.01)
%         movie_DAE_4link(i)=getframe;
        shg   
    end
%      save movie_DAE_4link;
end

if saved_animations=='Y'
    rate = 6; 
    dur   = 30; 
    ntimes = dur*rate;
    tspan = linspace(0,dur,ntimes);
    if method=='N'
str = sprintf('%d link pendulum using Newton-Euler equations', n);
    if n==4
        figure;
        xlabel('x-axis');
        ylabel('y-axis');
        title(str);
        load movie_NE_4link;
        movie(movie_4link_NE);
    end
    if n==5
        figure;
        xlabel('x-axis');
        ylabel('y-axis');
        title(str);
        load movie_NE_5link;
        movie(movie_5link_NE);
    end
    if n==6
        figure;
        xlabel('x-axis');
        ylabel('y-axis');
        title(str);
        load movie_NE_6link;
        movie(movie_6link_NE);
    end
    if n==7
        figure;
        xlabel('x-axis');
        ylabel('y-axis');
        title(str);
        load movie_NE_7link;
        movie(movie_7link_NE);
    end
    if n==8
        figure;
        xlabel('x-axis');
        ylabel('y-axis');
        title(str);
        load movie_NE_8link;
        movie(movie_8link_NE);
    end
    if n==9
        figure;
        xlabel('x-axis');
        ylabel('y-axis');
        title(str);
        load movie_NE_9link;
        movie(movie_9link_NE);
    end
    if n==10
        figure;
        xlabel('x-axis');
        ylabel('y-axis');
        title(str);
        load movie_NE_10link;
        movie(movie_10link_NE);
    end
end

if method=='L'
    str = sprintf('%d link pendulum using Lagrange equations', n);
    if n==4
        figure;
        xlabel('x-axis');
        ylabel('y-axis');
        title(str);
        load movie_L_4link;
        movie(movie_4link_L);
    end
    if n==5
        figure;
        xlabel('x-axis');
        ylabel('y-axis');
        title(str);
        load movie_L_5link;
        movie(movie_5link_L);
    end
    if n==6
        figure;
        xlabel('x-axis');
        ylabel('y-axis');
        title(str);
        load movie_L_6link;
        movie(movie_L_6link);
    end
    if n==7
        figure;
        xlabel('x-axis');
        ylabel('y-axis');
        title(str);
        load movie_L_7link;
        movie(movie_L_7link);
    end
    if n==8
        figure;
        xlabel('x-axis');
        ylabel('y-axis');
        title(str);
        load movie_L_8link;
        movie(movie_L_8link);
    end
    if n==9
        figure;
        xlabel('x-axis');
        ylabel('y-axis');
        title(str);
        load movie_L_9link;
        movie(movie_L_9link);
    end
    if n==10
        figure;
        xlabel('x-axis');
        ylabel('y-axis');
        title(str);
        load movie_L_10link;
        movie(movie_L_10link);
        
        figure(2);
        openfig('energy_Lagrange_10link');
    end
end
    
if method=='D'
    str = sprintf('%d link pendulum using DAEs', n);
    if n==4
        figure;
        xlabel('x-axis');
        ylabel('y-axis');
        title(str);
        load movie_DAE_4link;
        movie(movie_DAE_4link);
    end
    if n==5
        figure;
        xlabel('x-axis');
        ylabel('y-axis');
        title(str);
        load movie_DAE_5link;
        movie(movie_DAE_5link);
    end
    if n==6
        figure;
        xlabel('x-axis');
        ylabel('y-axis');
        title(str);
        load movie_DAE_6link;
        movie(movie_DAE_6link);
    end
    if n==7
        figure;
        xlabel('x-axis');
        ylabel('y-axis');
        title(str);
        load movie_DAE_7link;
        movie(movie_DAE_7link);
    end
    if n==8
        figure;
        xlabel('x-axis');
        ylabel('y-axis');
        title(str);
        load movie_DAE_8link;
        movie(movie_DAE_8link);
    end
    if n==9
        figure;
        xlabel('x-axis');
        ylabel('y-axis');
        title(str);
        load movie_DAE_9link;
        movie(movie_DAE_9link);
    end
    if n==10
        figure;
        xlabel('x-axis');
        ylabel('y-axis');
        title(str);
        load movie_DAE_10link;
        movie(movie_DAE_10link);
    end
end
end

if saved_animations=='N'
    
total_energy=[];
    for f=1:ntimes
        th=zarray(f,1:n);
        thd=zarray(f,n+1:2*n);
r=sym('er',[n,3]); eth=sym('eth',[n,3]);
rgo=sym('rgo',[n,3]);
rao=sym('rao',[n,3]);

i=[1 0 0];
j=[0 1 0];
k=cross(i,j);

templ=0; rao(1,:)=0;
tempv=0; KE=0; PE=0;
tempvel=0; tempPE=0; vel=zeros(n,1); v=zeros(n,1);
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

total_energy(f)=KE+PE;
    end
    
figure;
hold on
plot(tspan,total_energy-total_energy(1));
xlabel('Time');
ylabel('Change in total_energy');
title('Energy conservation check');

end
% toc