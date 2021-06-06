% written by Yiyuan Han, Essex BCI-NE Lab, 18/11/2019
% Updated in 04/07/2020
% [segData,times] = EEGsegment(data,sampleRate,blockLength,overlap)
% Segment the input EEGdata into N block with the same block
% length
% Input:
% -data: input EEG data for segmentation;
% -sampleRate: the sampling rate of the input EEG data
% -blockLength: the time length of each block (in sec)
% -overlap: the overlap of time length between two neighbor trials (in sec)
% Output:
% -segData: segmented EEG data in channel x time x no. of block
% -times: the timing scale of segmented data

function [segData,times] = EEGsegment(data,sampleRate,blockLength,overlap)
blockPoint = sampleRate*blockLength;%The number of points in each block
overPoint = sampleRate*overlap;% The number of overlapping points in each block
% read the dimenstions of the data
channelN = size(data,1);%the number of channels
pointN = size(data,2);%the point length of each channel
blockN = floor((pointN-(blockPoint-overPoint))/overPoint);% Number of blocks

% initialize the matrix to store the segmented blocks
segData = zeros(channelN,blockPoint,blockN);

for b = 1:blockN
    segData(:,:,b) = data(:,(b-1)*overPoint+1:(b-1)*overPoint+blockPoint);
end

times = (0:blockN-1)*blockLength;%the time scales of the segmented data

end