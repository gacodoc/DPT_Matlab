 clear all; close all; 

 fs = 44100; % tan so lay mau (Hz)
 t = 0 : 1/fs : 0.6; % truc thoi gian (s)
 f1 = 220;
 f2 = 247;
 f3 = 262;
 f4 = 294;
 f5 = 330;
 f6 = 349;
 f7 = 392;
 
  A1 = 0.5; A2 = A1/2; A3 = A1/3; A4 = A1/4; A5 = A1/5; A6 = A1/6; A7 = A1/7; % bien do
  w = 0 %pha
 
  y1 = A1 * sin( 2 * pi * f1 * t  );
  y2 = A2 * sin( 2 * pi * f2 * t  );
  y3 = A3 * sin( 2 * pi * f3 * t  );
  y4 = A4 * sin( 2 * pi * f4 * t  );
  y5 = A5 * sin( 2 * pi * f5 * t  );
  y6 = A6 * sin( 2 * pi * f6 * t  );
  y7 = A7 * sin( 2 * pi * f7 * t  );

  y = [y2 y5 y6 y1 y6 y6 y7 y5 y5 y5 y6 y7 y7 y7 y6 y7];
  myRec = audioread('orig_input.wav');
x1 = myRec';
x2 = x1(1:length(y));

melody = y+x2;
audiowrite('melody.wav',melody',44100);
sound(melody,44100);
