%% Problem 1 - Jump Height

%Calculates heights for jumps of given time
y1 = jump_height(.14);
y2 = jump_height(.26);
y3 = jump_height(.34);
y4 = jump_height(.59);
y5 = jump_height(.78);

%Stores X and Y values in a vector
X = [.14,.26,.34,.59,.78]
Y = [y1,y2,y3,y4,y5]

%plots x and y values
plot(X,Y)
title('Jump Height vs. Time') %Graph Title
xlabel('Time (sec)'); %X axis label
ylabel('Height (m)'); %Y axis label
annotation('textbox', [0,0.05,0.5,0],'string','This a figure that shows the relationship between 5 flight times (.14,.26,.34,.59,.78 sec) and the heights of the resulting jumps.');

%% Problem 2 - Hip Forces
% Given Values
FW=667; 
FC1=0;
FC2=120;
FC3=120;
A=.1;
B=.08;
C1=0;
C2=.3;
C3=.3;


disp('First is standing with no cane, next is standing with a cane ipsilateral, and finally is standing with a cane contralateral')
disp('first is FM and second is FJ')

%Calculate values
[FM1,FJ1] = Standing_No_Cane(FW,FC1,A,B,C1);
[FM2,FJ2] = Standing_Cane_On_Same_Side(FW,FC2,A,B,C2);
[FM3,FJ3] = Standing_Cane_On_Other_Side(FW,FC3,A,B,C3);
format long g %format values

%display values
disp([FM1,FJ1])
disp([FM2,FJ2])
disp([FM3,FJ3])

%% Problem 3 - Cardiac Mechanics pt. 1

% Use given start and ending times
t_start = 80
t_end = 230
%given initial values
y0 = 2.4

%Stores calculated values from ode45
[t,y] = ode45(@Cardiac_Mechanics, [t_start t_end],[y0]);
figure(2) %starts fig
plot(t,y); % Plots
title('Sarcomere length vs. Time') %Graph Title
xlabel('Time (ms)'); %X axis label
ylabel('SL (um)'); %Y axis label
annotation('textbox', [0,0.05,0.5,0],'string','A plot of sarcomere length vs time, solved by ode45, using the conditions of 80ms to 230ms');

%% Problem 4 - Cardiac Mechanics pt. 2

%Given Start and stop times
t_start = 120
t_end = 270
%given initial values
y0 = 2.4
%Stores calculated values from ode45
[t,y] = ode45(@Cardiac_Mechanics, [t_start t_end],[y0]);
figure(3) % Starts fig
plot(t,y); % Plots
title('Sarcomere length vs. Time') %Graph Title
xlabel('Time (ms)'); %X axis label
ylabel('SL (um)'); %Y axis label
annotation('textbox', [0,0.05,0.5,0],'string','A plot of sarcomere length vs time, solved by ode45, using the conditions of 120ms to 230ms');

