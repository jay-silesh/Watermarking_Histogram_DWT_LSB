function psnr1=sapsnr(ori,wmi)

MSE=samse(ori,wmi);

RMSE=sqrt(MSE);
val=max(ori);
val=max(val);
psnr1=20*log10((val/RMSE));
%


%% same as ps=10*log10((val*val)/MSE)
% MSE
% RMSE
