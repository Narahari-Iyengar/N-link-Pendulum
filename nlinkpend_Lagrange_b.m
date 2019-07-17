function b = nlinkpend_Lagrange_b(in1,in2,in3,g,in5,in6,in7)
%NLINKPEND_LAGRANGE_B
%    B = NLINKPEND_LAGRANGE_B(IN1,IN2,IN3,G,IN5,IN6,IN7)

%    This function was generated by the Symbolic Math Toolbox version 8.1.
%    14-Jan-2019 19:22:53

d1 = in3(:,1);
d2 = in3(:,2);
d3 = in3(:,3);
d4 = in3(:,4);
d5 = in3(:,5);
d6 = in3(:,6);
l1 = in2(:,1);
l2 = in2(:,2);
l3 = in2(:,3);
l4 = in2(:,4);
l5 = in2(:,5);
m1 = in5(:,1);
m2 = in5(:,2);
m3 = in5(:,3);
m4 = in5(:,4);
m5 = in5(:,5);
m6 = in5(:,6);
th1 = in7(:,1);
th2 = in7(:,2);
th3 = in7(:,3);
th4 = in7(:,4);
th5 = in7(:,5);
th6 = in7(:,6);
thd1 = in6(:,1);
thd2 = in6(:,2);
thd3 = in6(:,3);
thd4 = in6(:,4);
thd5 = in6(:,5);
thd6 = in6(:,6);
t2 = sin(th1);
t3 = cos(th1);
t4 = cos(th4);
t5 = d4.*t4.*thd4;
t6 = l1.*t3.*thd1;
t7 = cos(th2);
t8 = l2.*t7.*thd2;
t9 = cos(th3);
t10 = l3.*t9.*thd3;
t11 = t5+t6+t8+t10;
t12 = sin(th4);
t13 = d4.*t12.*thd4;
t14 = l1.*t2.*thd1;
t15 = sin(th2);
t16 = l2.*t15.*thd2;
t17 = sin(th3);
t18 = l3.*t17.*thd3;
t19 = t13+t14+t16+t18;
t20 = l4.*t4.*thd4;
t21 = cos(th5);
t22 = l4.*t12.*thd4;
t23 = sin(th5);
t24 = l1.*l4.*t2.*t4.*thd4.*2.0;
t25 = t24-l1.*l4.*t3.*t12.*thd4.*2.0;
t26 = l1.*l3.*t2.*t9.*thd3.*2.0;
t28 = l1.*l3.*t3.*t17.*thd3.*2.0;
t27 = t26-t28;
t29 = l1.*l2.*t2.*t7.*thd2.*2.0;
t31 = l1.*l2.*t3.*t15.*thd2.*2.0;
t30 = t29-t31;
t32 = d5.*t23.*thd5;
t33 = t14+t16+t18+t22+t32;
t34 = d5.*t21.*thd5;
t35 = t6+t8+t10+t20+t34;
t36 = cos(th6);
t37 = d6.*t36.*thd6;
t38 = l5.*t21.*thd5;
t39 = t6+t8+t10+t20+t37+t38;
t40 = sin(th6);
t41 = d6.*t40.*thd6;
t42 = l5.*t23.*thd5;
t43 = t14+t16+t18+t22+t41+t42;
t44 = d2.*t7.*thd2;
t45 = t6+t44;
t46 = d2.*t15.*thd2;
t47 = t14+t46;
t48 = d3.*t9.*thd3;
t49 = t6+t8+t48;
t50 = d3.*t17.*thd3;
t51 = t14+t16+t50;
t52 = l2.*l4.*t4.*t15.*thd4.*2.0;
t53 = t52-l2.*l4.*t7.*t12.*thd4.*2.0;
t54 = l2.*l3.*t7.*t17.*thd3.*2.0;
t56 = l2.*l3.*t9.*t15.*thd3.*2.0;
t55 = t54-t56;
t57 = l1.*l2.*t2.*t7.*thd1.*2.0;
t59 = l1.*l2.*t3.*t15.*thd1.*2.0;
t58 = t57-t59;
t60 = l3.*l4.*t4.*t17.*thd4.*2.0;
t61 = t60-l3.*l4.*t9.*t12.*thd4.*2.0;
t62 = l1.*l3.*t2.*t9.*thd1.*2.0;
t64 = l1.*l3.*t3.*t17.*thd1.*2.0;
t63 = t62-t64;
t65 = l2.*l3.*t7.*t17.*thd2.*2.0;
t67 = l2.*l3.*t9.*t15.*thd2.*2.0;
t66 = t65-t67;
t68 = l1.*l4.*t2.*t4.*thd1.*2.0;
t69 = t68-l1.*l4.*t3.*t12.*thd1.*2.0;
t70 = l2.*l4.*t4.*t15.*thd2.*2.0;
t71 = t70-l2.*l4.*t7.*t12.*thd2.*2.0;
t72 = l3.*l4.*t4.*t17.*thd3.*2.0;
t73 = t72-l3.*l4.*t9.*t12.*thd3.*2.0;
b = [thd1.*(m4.*(l1.*t2.*t11.*2.0-l1.*t3.*t19.*2.0).*(1.0./2.0)-m5.*(l1.*t3.*t33.*2.0-l1.*t2.*t35.*2.0).*(1.0./2.0)+m6.*(l1.*t2.*t39.*2.0-l1.*t3.*t43.*2.0).*(1.0./2.0)+m2.*(l1.*t2.*t45.*2.0-l1.*t3.*t47.*2.0).*(1.0./2.0)+m3.*(l1.*t2.*t49.*2.0-l1.*t3.*t51.*2.0).*(1.0./2.0))-thd3.*(m4.*t27.*(1.0./2.0)+m5.*t27.*(1.0./2.0)+m6.*t27.*(1.0./2.0)+m3.*(d3.*l1.*t2.*t9.*thd3.*2.0-d3.*l1.*t3.*t17.*thd3.*2.0).*(1.0./2.0))-thd2.*(m3.*t30.*(1.0./2.0)+m4.*t30.*(1.0./2.0)+m5.*t30.*(1.0./2.0)+m6.*t30.*(1.0./2.0)+m2.*(d2.*l1.*t2.*t7.*thd2.*2.0-d2.*l1.*t3.*t15.*thd2.*2.0).*(1.0./2.0))-m4.*(l1.*t2.*t11.*thd1.*2.0-l1.*t3.*t19.*thd1.*2.0).*(1.0./2.0)+m5.*(l1.*t3.*t33.*thd1.*2.0-l1.*t2.*t35.*thd1.*2.0).*(1.0./2.0)-m6.*(l1.*t2.*t39.*thd1.*2.0-l1.*t3.*t43.*thd1.*2.0).*(1.0./2.0)-m2.*(l1.*t2.*t45.*thd1.*2.0-l1.*t3.*t47.*thd1.*2.0).*(1.0./2.0)-m3.*(l1.*t2.*t49.*thd1.*2.0-l1.*t3.*t51.*thd1.*2.0).*(1.0./2.0)-thd5.*(m5.*(d5.*l1.*t2.*t21.*thd5.*2.0-d5.*l1.*t3.*t23.*thd5.*2.0).*(1.0./2.0)+m6.*(l1.*l5.*t2.*t21.*thd5.*2.0-l1.*l5.*t3.*t23.*thd5.*2.0).*(1.0./2.0))-thd4.*(m5.*t25.*(1.0./2.0)+m6.*t25.*(1.0./2.0)+m4.*(d4.*l1.*t2.*t4.*thd4.*2.0-d4.*l1.*t3.*t12.*thd4.*2.0).*(1.0./2.0))-m6.*thd6.*(d6.*l1.*t2.*t36.*thd6.*2.0-d6.*l1.*t3.*t40.*thd6.*2.0).*(1.0./2.0)-d1.*g.*m1.*t2-g.*l1.*m2.*t2-g.*l1.*m3.*t2-g.*l1.*m4.*t2-g.*l1.*m5.*t2-g.*l1.*m6.*t2;-thd2.*(m2.*(d2.*t7.*t47.*2.0-d2.*t15.*t45.*2.0).*(1.0./2.0)+m4.*(l2.*t7.*t19.*2.0-l2.*t11.*t15.*2.0).*(1.0./2.0)+m5.*(l2.*t7.*t33.*2.0-l2.*t15.*t35.*2.0).*(1.0./2.0)+m6.*(l2.*t7.*t43.*2.0-l2.*t15.*t39.*2.0).*(1.0./2.0)+m3.*(l2.*t7.*t51.*2.0-l2.*t15.*t49.*2.0).*(1.0./2.0))+thd3.*(m4.*t55.*(1.0./2.0)+m5.*t55.*(1.0./2.0)+m6.*t55.*(1.0./2.0)+m3.*(d3.*l2.*t7.*t17.*thd3.*2.0-d3.*l2.*t9.*t15.*thd3.*2.0).*(1.0./2.0))+m2.*(d2.*t7.*t47.*thd2.*2.0-d2.*t15.*t45.*thd2.*2.0).*(1.0./2.0)+thd1.*(m3.*t58.*(1.0./2.0)+m4.*t58.*(1.0./2.0)+m5.*t58.*(1.0./2.0)+m6.*t58.*(1.0./2.0)+m2.*(d2.*l1.*t2.*t7.*thd1.*2.0-d2.*l1.*t3.*t15.*thd1.*2.0).*(1.0./2.0))+m4.*(l2.*t7.*t19.*thd2.*2.0-l2.*t11.*t15.*thd2.*2.0).*(1.0./2.0)+m5.*(l2.*t7.*t33.*thd2.*2.0-l2.*t15.*t35.*thd2.*2.0).*(1.0./2.0)+m6.*(l2.*t7.*t43.*thd2.*2.0-l2.*t15.*t39.*thd2.*2.0).*(1.0./2.0)+m3.*(l2.*t7.*t51.*thd2.*2.0-l2.*t15.*t49.*thd2.*2.0).*(1.0./2.0)+thd5.*(m5.*(d5.*l2.*t7.*t23.*thd5.*2.0-d5.*l2.*t15.*t21.*thd5.*2.0).*(1.0./2.0)+m6.*(l2.*l5.*t7.*t23.*thd5.*2.0-l2.*l5.*t15.*t21.*thd5.*2.0).*(1.0./2.0))-thd4.*(m5.*t53.*(1.0./2.0)+m6.*t53.*(1.0./2.0)+m4.*(d4.*l2.*t4.*t15.*thd4.*2.0-d4.*l2.*t7.*t12.*thd4.*2.0).*(1.0./2.0))+m6.*thd6.*(d6.*l2.*t7.*t40.*thd6.*2.0-d6.*l2.*t15.*t36.*thd6.*2.0).*(1.0./2.0)-d2.*g.*m2.*t15-g.*l2.*m3.*t15-g.*l2.*m4.*t15-g.*l2.*m5.*t15-g.*l2.*m6.*t15;thd1.*(m4.*t63.*(1.0./2.0)+m5.*t63.*(1.0./2.0)+m6.*t63.*(1.0./2.0)+m3.*(d3.*l1.*t2.*t9.*thd1.*2.0-d3.*l1.*t3.*t17.*thd1.*2.0).*(1.0./2.0))-thd2.*(m4.*t66.*(1.0./2.0)+m5.*t66.*(1.0./2.0)+m6.*t66.*(1.0./2.0)+m3.*(d3.*l2.*t7.*t17.*thd2.*2.0-d3.*l2.*t9.*t15.*thd2.*2.0).*(1.0./2.0))+m3.*(d3.*t9.*t51.*thd3.*2.0-d3.*t17.*t49.*thd3.*2.0).*(1.0./2.0)-thd3.*(m3.*(d3.*t9.*t51.*2.0-d3.*t17.*t49.*2.0).*(1.0./2.0)+m4.*(l3.*t9.*t19.*2.0-l3.*t11.*t17.*2.0).*(1.0./2.0)+m5.*(l3.*t9.*t33.*2.0-l3.*t17.*t35.*2.0).*(1.0./2.0)+m6.*(l3.*t9.*t43.*2.0-l3.*t17.*t39.*2.0).*(1.0./2.0))+m4.*(l3.*t9.*t19.*thd3.*2.0-l3.*t11.*t17.*thd3.*2.0).*(1.0./2.0)+m5.*(l3.*t9.*t33.*thd3.*2.0-l3.*t17.*t35.*thd3.*2.0).*(1.0./2.0)+m6.*(l3.*t9.*t43.*thd3.*2.0-l3.*t17.*t39.*thd3.*2.0).*(1.0./2.0)+thd5.*(m5.*(d5.*l3.*t9.*t23.*thd5.*2.0-d5.*l3.*t17.*t21.*thd5.*2.0).*(1.0./2.0)+m6.*(l3.*l5.*t9.*t23.*thd5.*2.0-l3.*l5.*t17.*t21.*thd5.*2.0).*(1.0./2.0))-thd4.*(m5.*t61.*(1.0./2.0)+m6.*t61.*(1.0./2.0)+m4.*(d4.*l3.*t4.*t17.*thd4.*2.0-d4.*l3.*t9.*t12.*thd4.*2.0).*(1.0./2.0))+m6.*thd6.*(d6.*l3.*t9.*t40.*thd6.*2.0-d6.*l3.*t17.*t36.*thd6.*2.0).*(1.0./2.0)-d3.*g.*m3.*t17-g.*l3.*m4.*t17-g.*l3.*m5.*t17-g.*l3.*m6.*t17;m4.*(d4.*t4.*t19.*thd4.*2.0-d4.*t11.*t12.*thd4.*2.0).*(1.0./2.0)+m5.*(l4.*t4.*t33.*thd4.*2.0-l4.*t12.*t35.*thd4.*2.0).*(1.0./2.0)+m6.*(l4.*t4.*t43.*thd4.*2.0-l4.*t12.*t39.*thd4.*2.0).*(1.0./2.0)+thd5.*(m5.*(d5.*l4.*t4.*t23.*thd5.*2.0-d5.*l4.*t12.*t21.*thd5.*2.0).*(1.0./2.0)+m6.*(l4.*l5.*t4.*t23.*thd5.*2.0-l4.*l5.*t12.*t21.*thd5.*2.0).*(1.0./2.0))-thd4.*(m4.*(d4.*t4.*t19.*2.0-d4.*t11.*t12.*2.0).*(1.0./2.0)+m5.*(l4.*t4.*t33.*2.0-l4.*t12.*t35.*2.0).*(1.0./2.0)+m6.*(l4.*t4.*t43.*2.0-l4.*t12.*t39.*2.0).*(1.0./2.0))+thd1.*(m5.*t69.*(1.0./2.0)+m6.*t69.*(1.0./2.0)+m4.*(d4.*l1.*t2.*t4.*thd1.*2.0-d4.*l1.*t3.*t12.*thd1.*2.0).*(1.0./2.0))+thd2.*(m5.*t71.*(1.0./2.0)+m6.*t71.*(1.0./2.0)+m4.*(d4.*l2.*t4.*t15.*thd2.*2.0-d4.*l2.*t7.*t12.*thd2.*2.0).*(1.0./2.0))+thd3.*(m5.*t73.*(1.0./2.0)+m6.*t73.*(1.0./2.0)+m4.*(d4.*l3.*t4.*t17.*thd3.*2.0-d4.*l3.*t9.*t12.*thd3.*2.0).*(1.0./2.0))+m6.*thd6.*(d6.*l4.*t4.*t40.*thd6.*2.0-d6.*l4.*t12.*t36.*thd6.*2.0).*(1.0./2.0)-d4.*g.*m4.*t12-g.*l4.*m5.*t12-g.*l4.*m6.*t12;-thd5.*(m5.*(d5.*t21.*t33.*2.0-d5.*t23.*t35.*2.0).*(1.0./2.0)-m6.*(l5.*t23.*t39.*2.0-l5.*t21.*t43.*2.0).*(1.0./2.0))+m5.*(d5.*t21.*t33.*thd5.*2.0-d5.*t23.*t35.*thd5.*2.0).*(1.0./2.0)-m6.*(l5.*t23.*t39.*thd5.*2.0-l5.*t21.*t43.*thd5.*2.0).*(1.0./2.0)+thd1.*(m5.*(d5.*l1.*t2.*t21.*thd1.*2.0-d5.*l1.*t3.*t23.*thd1.*2.0).*(1.0./2.0)+m6.*(l1.*l5.*t2.*t21.*thd1.*2.0-l1.*l5.*t3.*t23.*thd1.*2.0).*(1.0./2.0))-thd2.*(m5.*(d5.*l2.*t7.*t23.*thd2.*2.0-d5.*l2.*t15.*t21.*thd2.*2.0).*(1.0./2.0)+m6.*(l2.*l5.*t7.*t23.*thd2.*2.0-l2.*l5.*t15.*t21.*thd2.*2.0).*(1.0./2.0))-thd4.*(m5.*(d5.*l4.*t4.*t23.*thd4.*2.0-d5.*l4.*t12.*t21.*thd4.*2.0).*(1.0./2.0)+m6.*(l4.*l5.*t4.*t23.*thd4.*2.0-l4.*l5.*t12.*t21.*thd4.*2.0).*(1.0./2.0))-thd3.*(m5.*(d5.*l3.*t9.*t23.*thd3.*2.0-d5.*l3.*t17.*t21.*thd3.*2.0).*(1.0./2.0)+m6.*(l3.*l5.*t9.*t23.*thd3.*2.0-l3.*l5.*t17.*t21.*thd3.*2.0).*(1.0./2.0))-m6.*thd6.*(d6.*l5.*t23.*t36.*thd6.*2.0-d6.*l5.*t21.*t40.*thd6.*2.0).*(1.0./2.0)-d5.*g.*m5.*t23-g.*l5.*m6.*t23;m6.*(d6.*t36.*t43.*thd6.*2.0-d6.*t39.*t40.*thd6.*2.0).*(1.0./2.0)+m6.*thd1.*(d6.*l1.*t2.*t36.*thd1.*2.0-d6.*l1.*t3.*t40.*thd1.*2.0).*(1.0./2.0)-m6.*thd2.*(d6.*l2.*t7.*t40.*thd2.*2.0-d6.*l2.*t15.*t36.*thd2.*2.0).*(1.0./2.0)-m6.*thd4.*(d6.*l4.*t4.*t40.*thd4.*2.0-d6.*l4.*t12.*t36.*thd4.*2.0).*(1.0./2.0)-m6.*thd3.*(d6.*l3.*t9.*t40.*thd3.*2.0-d6.*l3.*t17.*t36.*thd3.*2.0).*(1.0./2.0)+m6.*thd5.*(d6.*l5.*t23.*t36.*thd5.*2.0-d6.*l5.*t21.*t40.*thd5.*2.0).*(1.0./2.0)-m6.*thd6.*(d6.*t36.*t43.*2.0-d6.*t39.*t40.*2.0).*(1.0./2.0)-d6.*g.*m6.*t40];
