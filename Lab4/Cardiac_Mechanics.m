function [dSLdt] = Cardiac_Mechanics(t,SL)

T=40;
SL0=2.4;
SLZ = 1.6;
SL_rest = 2;
v_max = .006;
ta = 500;
t_max = 100;
B = 68.67;



t_star = t/ta;
tau = t_max/ta;

if t_star <= tau
    ft_star = sin((pi*t_star)/(2*tau)).^2;
else
    ft_star = sin((pi*(1-t_star))/(2*(1-tau))).^2;
end

dSLdt = v_max * ((T/((ft_star * B)*((1-(((SL-SL0)^2)/((SLZ-SL0)^2))*(SL/SL_rest))))) -1);
end

