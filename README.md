# MatLab-Audio-Analysis
**Author:** Ava Powelson

**Usage:** matlab -r "frequency_analysis [fileName.wav]"

Frequency analysis of a .wav file using MatLab.
This program samples the first N (chosen by user when prompted) seconds of audio. Power = volume.
I have included circled examples of notes on an example plot created using piano.wav for 5 seconds, you can see when a key is hit and how the note is sustained.

## Discussion of Parameters
These parameters were chosen to work best with piano.wav

**Window function:** I used the Blackman window as its narrowness cuts out many unwanted frequencies for spectrogram analysis. Something wide like the Hamming window makes the frequencies of individual notes much less distinct from background levels when compared with Blackman. I used a window length of fs/7 because anything smaller made the notes become fuzzy and indistinct on the time axis. There is a trade-off between frequency and time resolution, and this was the best balance I found through trial and error. I wanted the window size to be as small as possible since frequency resolution is more important for identifying individual notes.

**Window Overlap:** I used an overlap of three quarters of the window size in order to be able to catch as much information about the notes as possible in case they were split over two (or more) windows. With a smaller overlap the notes appeared less distinct along the x-axis, which I believe is due to the fact that the gaps between the notes were much smaller than the notes themselves and the gap information is lost if it occurs between windows.

**Frequency range:** I chose a frequency range of (1.0:0.025:5)*262 so that the frequencies would range in pitch from C4 (262Hz) to about E6 (1319Hz). This way the notes I was looking at had a decent buffer from the edge of the plot on both the top and the bottom. I chose 0.025 as a step size because it catches the difference between notes very well and allows you to see the attack and sustain phases of the notes as well. Anything smaller does not make a perceivable difference.
