%% Problem 1

%Vary k, F const
F=1;
k = [.1,1,5];
sim('slm1');
figure(1)
plot(time,x(:,1),'b',time,x(:,2),'r--',time,x(:,3),'k:')
legend('k=.1','k=1','k=5')
xlabel('time(s)')
ylabel('displacement(m)')
ylim([0,12])

%Vary F, k const
F=[1,5,10];
k = 1;
sim('slm1');
figure(2)
plot(time,x(:,1),'b',time,x(:,2),'r--',time,x(:,3),'k:')
legend('f=1','f=5','f=10')
xlabel('time(s)')
ylabel('displacement(m)')
ylim([0,12])

%% Problem 2

%Vary k, F const, B const
F=1;
k = [.1,1,5];
B = 1;
sim('slm2');
figure(3)
plot(time,x(:,1),'b',time,x(:,2),'r--',time,x(:,3),'k:')
legend('k=.1','k=1','k=5')
xlabel('time(s)')
ylabel('displacement(m)')



%Vary F, k const, B const
F=[1,5,10];
k = 1;
B = 1;
sim('slm2');
figure(4)
plot(time,x(:,1),'b',time,x(:,2),'r--',time,x(:,3),'k:')
legend('f=1','f=5','f=10')
xlabel('time(s)')
ylabel('displacement(m)')

%Vary F, k const, B const
F=5;
k = 1;
B = [1,5,10];
sim('slm2');
figure(5)
plot(time,x(:,1),'b',time,x(:,2),'r--',time,x(:,3),'k:')
legend('B=1','B=5','B=10')
xlabel('time(s)')
ylabel('displacement(m)')


%% Problem 3

%Vary F, k const, B const
X=1;
k = [.1,1,5];
B = 1;
sim('slm3');
figure(6)
plot(time,F(:,1),'b',time,F(:,2),'r--',time,F(:,3),'k:')
legend('B=1','B=5','B=10')
xlabel('time(s)')
ylabel('displacement(m)')


%% Problem 4

c1 = 200;
k1 = 100;
k2 = 1;

X=1;




sim('slm4');
figure(7)
%plot(time,F(:,1),'b',time,F(:,2),'r--',time,F(:,3),'k:')
plot(time,F(:,1),'b')
xlabel('time(s)')
ylabel('Force F(N)')
title('Stress Relaxation Response of the Kelvin viscoelastic model')

%% 

c1 = 5;
k1 = 1;
k2 = 50;


F=10

sim('slm5');
figure(8)
%plot(time,F(:,1),'b',time,F(:,2),'r--',time,F(:,3),'k:')
plot(time,x(:,1),'b')
legend('F=10')
xlabel('time(s)')
ylabel('displacement(m)')


%% 

b1=2.817;
b2=1227.0;
b3=0.2090;
b4=4.560;
b5=1.678;
b6= -0.4571;

m=1.2;
k1=3930;
k2=5720;
k3=123;
c1=116;
c2=.349;

W=88;




sim('slm6');


q1 = -1.*q1
q2 = -1.*q2
q1 = q1+.069

figure(8)
%plot(time,F(:,1),'b',time,F(:,2),'r--',time,F(:,3),'k:')
plot(time,q1(:,1),'b',time,q2,'r--')
legend('Y','X')
xlabel('time(s)')
ylabel('displacement(m)')
xlim([0,.05])
%ylim([-.12,.12])
title('Displacement of Ankle Joint and the Plantar Fascia')


