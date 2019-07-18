# N-link-Pendulum
(READ REPORT FOR THEORY)

This projects contains my MATLAB code to simulate an n-link pendulum.
The project was part of the final assessment for MAE5730 - Intermediate Dynamics at Cornell University. 

The n-link pendulum is an extension of the simple pendulum. The motion of this pendulum is governed by a set of coupled ordinary differential equations. This motion is chaotic.

All the forces acting in this system are conservative forces. Friction between the hinges, friction due to air and any other energy losses are neglected. As a result, energy is conserved. The three methods used to obtain the equations of motions of the n-link pendulum are:
1. Newton-Euler equations
2. Differential Algebraic equations (DAEs)
3. Lagrange equations

System Parameters

    • Length of link

    • Mass of link

    • Position of Centre of Mass(CoM) of link

    • Moment of Inertia(I) of link

    • Acceleration due to gravity

    • Angle of link (Initial)

    • Angular velocity of link (Initial)

With this information, the equations of motion for the n-link pendulum is derived using all of the above methods.

The equations obtained are the second order differentials of the orientation of the link i.e. the angular acceleration of the link. The equations are then fed into ODE45 in MATLAB to obtain the angles and angular velocities of the links. The motion of the n-link pendulum is then simulated.
