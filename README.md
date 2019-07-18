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

FILE DESCRIPTIONS:
1. **nlinkpend_MAIN.m**
       
        Main file that is executed. Run the file and follow instructions that appear in the command window.
2. **nlinkpend_Euler_derivation.m**
        
        Contains the equations of motion derived using Euler's method
3. **nlinkpend_Lagrange_derivation.m**
       
       Contains the equations of motion derived using Lagrange's method
4. **nlinkpend_DAE_derivation.m**
      
        Contains the equations of motion derived using the method of DAEs (Differential Algebraic Equations)
5. **nlinkpend_Euler_rhsfile.m , nlinkpend_Lagrange_rhsfile.m, nlinkpend_DAE_rhsfile.m**
        
        Contains the execution of ODE45. Returns velocity and angular acceleration of links
