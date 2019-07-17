%Pre-loaded animations for n-link pendulum - Final Project
%Narahari S Iyengar -nsi7
%MAE 5730 - Intermediate Dynamics

clear all;
clc;

method=input('Which method would you like to use to simulate the triple pendulum?\n 1. (N)ewton-Euler method \n 2. (D)AE method \n 3. (L)agrange method: ','s');
n=input('Enter the number of links: ');

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