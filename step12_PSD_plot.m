addpath '/Users/mingwenjie/My Document/Matlab/MATLAB tools/fieldtrip/fieldtrip-20210311/'
ft_defaults


%% making a "fake TFRhann variable

% %Percentage
% TFRhann.powspctrm = TFR_all_side_corrected_percentage;
% TFRhann.label = TFRhann.label(1:19);%从任意患者中load TFRhann，提取label
% TFRhann.time = TFRhann.time(1:size(TFR_all_side_corrected_percentage,3));

%Absolute
TFRhann.powspctrm = TFR_all_side_corrected;
TFRhann.label = TFRhann.label(1:19);
TFRhann.time = TFRhann.time(1:size(TFR_all_side_corrected,3));

%% plot
cfg = [];
% cfg.xlim = [0.9 1.3];
cfg.ylim = [1 4];
% cfg.zlim = [0 20e4];
% cfg.baseline = [-0.5 -0.1];
% cfg.baselinetype = 'absolute';
cfg.layout = 'ZEYY_21.mat';
figure;
% subplot(2,3,1);
ft_topoplotTFR(cfg,TFRhann); colorbar
title('Delta');

cfg = [];
% cfg.xlim = [0.9 1.3];
cfg.ylim = [4 7];
% cfg.zlim = [0 1e3];
% cfg.baseline = [-0.5 -0.1];
% cfg.baselinetype = 'absolute';
cfg.layout = 'ZEYY_21.mat';
% subplot(2,3,2);
figure;
ft_topoplotTFR(cfg,TFRhann); colorbar
title('Theta');

cfg = [];
% cfg.xlim = [0.9 1.3];
cfg.ylim = [9 12];
% cfg.zlim = [0 200];
% cfg.baseline = [-0.5 -0.1];
% cfg.baselinetype = 'absolute';
cfg.layout = 'ZEYY_21.mat';
% subplot(2,3,3); 
figure;
ft_topoplotTFR(cfg,TFRhann); colorbar
title('Alpha');

cfg = [];
% cfg.xlim = [0.9 1.3];
cfg.ylim = [12 30];
% cfg.zlim = [0 60];
% cfg.baseline = [-0.5 -0.1];
% cfg.baselinetype = 'absolute';
cfg.layout = 'ZEYY_21.mat';
% subplot(2,3,4); 
figure;
ft_topoplotTFR(cfg,TFRhann); colorbar
title('Beta');

cfg = [];
% cfg.xlim = [0.9 1.3];
cfg.ylim = [21 30];
% cfg.zlim = [0 40];
% cfg.baseline = [-0.5 -0.1];
% cfg.baselinetype = 'absolute';
cfg.layout = 'ZEYY_21.mat';
% subplot(2,3,5); 
figure;
ft_topoplotTFR(cfg,TFRhann); colorbar
title('Gamma');

