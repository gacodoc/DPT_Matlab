clear all; close all;
% Record your voice for 10 seconds.
rec = audiorecorder(44100,16,1);
disp('Start speaking.')
recordblocking(rec, 10);
disp('End of Recording.');

% Play back the recording.
play(rec);

% Store data in double-precision array.
myRec = getaudiodata(rec);
audiowrite('orig_input.wav',myRec,44100);

