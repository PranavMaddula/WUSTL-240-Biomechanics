l=linspace(0,3,3000);
f=1


sig=sin(2*pi*f*l);
for t=1:3000
   
    if sin(2*pi*l(t))<=0
        sig(t)=0;
    else
        sig(t) = sin(2*pi*l(t));
    end
end



plot(sig);
ylim([-1,1])
grid


plot(Qout(1.2167,259,10))
ylim([-5,270])
title('Middleschool-aged Cardiac Blood Flow') %Graph Title
xlabel('Time (Milliseconds)'); %X axis label
ylabel('Qin (ml/sec)'); %Y axis label

time=10
l=linspace(0,time,10000);

%plot(Qout1(1.67,150,l))


t_start = 0
t_end = 10
y0= 70
[t,y] = ode15s(@Cardiac_Pressure, [t_start t_end], [y0]);
plot(t,y); % Plots
title('Middleschool-aged Exercising Blood Pressure Output') %Graph Title
xlabel('Time (sec)'); %X axis label
ylabel('Pressure) (mmHg)'); %Y axis label

y1 = y(25:end)
max(y1)
min(y1)