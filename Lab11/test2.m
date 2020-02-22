f= 1.67
t=.2
Qmax = 150

Qtemp = sin(2*pi*f*t);

bool = (sin(2*pi*f*t)>0);

Qtemp = Qtemp*bool;

Q = Qmax*Qtemp;