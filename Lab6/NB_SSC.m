timeN = normalbone(:,1);
forceN= normalbone(:,2);
displacementN = normalbone(:,3);

timeV = vinegarbone(:,1);
forceV= vinegarbone(:,2);
displacementV = vinegarbone(:,3);

timeB = bleachbone(:,1);
forceB= bleachbone(:,2);
displacementB = bleachbone(:,3);

CXAN=64.13001806
CXAV=58.73421487
CXAB=37.54749073

LN=66.11
LV=64.00
LB=65.69

% mdn = max(displacementN)
% mdv= max(displacementV)
% mdb=max(displacementB)
% 
% mfn=max(forceN)
% mfv=max(forceV)
% mfb=max(forceB)

stressN=forceN./CXAN;
strainN=displacementN./LN;

stressV=forceV./CXAV;
strainV=displacementV./LV;

stressB=forceB./CXAB;
strainB=displacementB./LB;


strainN = strainN(1:end/2)
stressN = stressN(1:end/2)
strainV = strainV(1:end*2/3)
stressV = stressV(1:end*2/3)
strainB = strainB(1:end*9.6/16)
stressB = stressB(1:end*9.6/16)



plot(strainN,stressN,'g',strainV,stressV,'r',strainB,stressB,'b')
ylabel('Stress');
xlabel('Strain');
legend('Bleach','Vinegar','Normal');
title('Chicken Bone Stress vs. Strain Curve');
