function [Qt1] = Qout1(f,Q,time)
%Builds half wave rectified sinusoid modified for f,Q

%l=linspace(0,time,10000);

sig=sin(2*pi*f*time);   
    if sin(2*pi*f*time))<0
        sig=0;
    else
        sig = sin(2*pi*f*time);
    end

Qt1 = sig*Q;

end

