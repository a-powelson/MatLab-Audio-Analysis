% Analyze the first 5 seconds

[~, fs] = audioread('piano.wav');
[x, fs] = audioread('piano.wav', [1, fs*5]);
windowSize = fs/7;
spectrogram(x, blackman(windowSize), windowSize*(3/4), (1:0.025:5)*262, fs, 'yaxis');
