%allFFTtosingleCSV
%Change the path manually to keep the system from being too slow. 
%avoid O(n*m) complexity here.:P
cd C:\Users\kunwar\Desktop\nn\jim2012Chords\Guitar_Only\g;
csvFiles=dir('*.csv');
%csvC=[];%only for the first time. Remove csvC=[] from second folder. 
for k=1:length(csvFiles)
    fileName=sprintf('g%d.csv',k);
    csr=csvread(fileName);
    csvC=[csvC csr];
end

    