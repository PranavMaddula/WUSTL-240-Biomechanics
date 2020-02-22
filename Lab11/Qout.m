function [Qt] = Qout(f,Q,time)
%Builds half wave rectified sinusoid modified for f,Q

l=linspace(0,time,time*1000);



sig=sin(2*pi*f*l);
for t=1:time*1000
   
    if sin(2*pi*f*l(t))<=0
        sig(t)=0;
    else
        sig(t) = sin(2*pi*f*l(t));
    end
end

Qt = sig*Q;

end

