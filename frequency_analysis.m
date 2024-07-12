% Analyze the first t seconds of audio
function []=frequency_analysis(fileName)
    prompt = "How many seconds would you like to sample?";
    t = input(prompt);
    [~, fs] = audioread(string(fileName));
    [x, fs] = audioread(string(fileName), [1, fs*t]);
    windowSize = cast(fs/7, 'int32');
    spectrogram(x, blackman(windowSize), windowSize*(3/4), (1:0.025:5)*262, fs, 'yaxis');
end
