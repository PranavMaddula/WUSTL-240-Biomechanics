function [FM,FJ] = Standing_Cane_On_Other_Side(FW,FC,A,B,C)
%Calculates FM and FJ given FW,FC,A,B,C
FM = ((FW*A)-(FC*(C+A)))/B;
FJ = FM+FW-FC;
end

