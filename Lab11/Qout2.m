function [Q] = Qout2(f,Qmax,t)

Qtemp = sin(2*pi*f*t);

bool = (sin(2*pi*f*t)>0);

Qtemp = Qtemp*bool;

Q = Qmax*Qtemp;

end

