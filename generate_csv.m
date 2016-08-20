clear all
close all

cd C:\Users\kunwar\Desktop\nn\jim2012Chords\Guitar_Only\g;
path_a='C:\Users\kunwar\Desktop\nn\jim2012Chords\Guitar_Only\g\';
waveFiles=dir([path_a '*.wav']);
%arr=[];
for k=1:length(waveFiles)
waveFileName=sprintf('g%d.wav',k);
y=audioread(waveFileName);
y=y/norm(y);
y_fft=abs(fft(y));
y_fft=y_fft(1:400);
csv_filen=sprintf('g%d.csv',k);
csvwrite(csv_filen,y_fft,0,0);
end