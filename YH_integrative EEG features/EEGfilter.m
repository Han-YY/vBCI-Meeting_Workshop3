% written by Yiyuan Han, Essex BCI-NE Lab, 23/OCT/2019
% filteredData = EEGfilter (data,band,filterType,order,electrode,sampleRate)
% the filter for filterring EEG signals with Butterworth filter
% - data: input EEG signals in time x channel
% - band: the filterring band, if the filter Type is 'LP'/'HP', it only
% accepts one parameter to be passed in, or it should be an array with two
% elements defining the limits of the filter, e.g. [10 50]
% - filterType: there are 4 types of filters - 'LP','HP','BP','BS'
% 'LP': Low-pass filter
% 'HP': High-pass filter
% 'BP': Band-pass filter
% 'BS': Band-stop filter
% - electrode: it can accept both numerical variables and chars, if inputting
% numerical variables, only the channels with these specific indices will
% be filtered, if data from all channels needs to be filtered, 'all' is
% requested to be inputted
% - order: order used in the Butterworth filter
% - sampleRate: the sample rate used in recording the data

function filteredData = EEGfilter (data,band,filterType,order,electrode,sampleRate)
% If the data type of data is not 'double', here it will be transformed
% into it to prevent possible errors
data = double(data);
% Choose the data needed to be filtered
if electrode == 'all'
    data2fil = data;
else
    data2fil = data(electrode,:);
end

% Filter the signal
switch filterType
    case 'LP'
        [filtb,filta] = butter(order,band/(sampleRate/2),'low');
        filteredData = filter(filtb,filta,data2fil);
    case 'HP'
        [filtb,filta] = butter(order,band/(sampleRate/2),'high');
        filteredData = filter(filtb,filta,data2fil);
    case 'BS'
        [filtb,filta] = butter(order,band/(sampleRate/2),'stop');
        filteredData = filter(filtb,filta,data2fil);
    case 'BP'
        [filtb1,filta1] = butter(order,band(2)/(sampleRate/2),'low');
        filteredData0 = filter(filtb1,filta1,data2fil);
        [filtb2,filta2] = butter(order,band(1)/(sampleRate/2),'high');
        filteredData = filter(filtb2,filta2,filteredData0);
end
        

end