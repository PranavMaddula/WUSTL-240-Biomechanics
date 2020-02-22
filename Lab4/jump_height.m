function [height] = jump_height(time)
%Calculates jump height based on flight time, using given equations 1.1 and
%1.2
height = ((9.8*time/2)^2) / (2*9.8);
end