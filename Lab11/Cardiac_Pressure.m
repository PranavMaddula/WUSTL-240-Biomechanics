function [dPdt] = Cardiac_Pressure(t,P)

R=0.408
C=0.72
f=2.8667
Qm=856

Q = Qout2(f,Qm,t)


dPdt = ((Q-(P/R))/C);

end