%% drawLearningCurve
colorPalette;
t = 1 : 1 : 300;
num_sub = 5;
trend   = linspace(0.5,0.9,numel(t))';
learningCurve = repmat(trend,[1,num_sub]) + randn(numel(t),num_sub).*linspace(0.5,0.1,numel(t))';
% wav = 0.1*sin(2*pi*0.05*t)';
wav = -exp(-0.02*t)' .* learningCurve + randn(1,num_sub)*0.3 + 0.6;
figure; 
plotMat(wav)
% plotMat(wav.*learningCurve,col(:,1),1);