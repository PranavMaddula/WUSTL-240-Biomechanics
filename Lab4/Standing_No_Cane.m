function [FM,FJ] = Standing_No_Cane(FW,FC,A,B,C)
%Calculates FM and FJ given FW,FC,A,B,C
FM = (FW*A)/B;
FJ = FM+FW-FC;
end

