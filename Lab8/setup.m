%% Problem 1

z=[1,.5,5];
M=[50,25,75];
Kpe=75
Kse=135
b=50
A=0


sim('slm1');
figure(1)
subplot(2,1,1);
plot(time,T(:,1),'b',time,T(:,2),'r--',time,T(:,3),'k:')
legend('Z=1','Z=.5','Z=5')
xlabel('time(s)')
ylabel('force (g)')
title('Simulated Force Vs. Time')

subplot(2,1,2); 
plot(time,displacement(:,1),'b',time,displacement(:,2),'r--',time,displacement(:,3),'k:')
ylim([-.25,5.5])
xlabel('time(s)')
ylabel('displacement(cm)')
title('Input Function')

sim('slm1');
figure(2)
subplot(2,1,1);
plot(time,X(:,1),'b',time,X(:,2),'r--',time,X(:,3),'k:')
legend('M=50','M=25','M=75')
xlabel('time(s)')
ylabel('displacement(cm)')
title('Simulated Displacement Vs. Time')

subplot(2,1,2); 
plot(time,force(:,1),'b',time,force(:,2),'r--',time,force(:,3),'k:')
title('Input Function')
ylim([-.25,55])
xlabel('time(s)')
ylabel('force(g)')
