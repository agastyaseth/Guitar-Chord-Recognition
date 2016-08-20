cd c:\Users\kunwar\Desktop\nn\jim2012Chords\Guitar_Only\g\
csvFiles=dir('*.csv');
filename_g=cell(length(csvFiles),1);
data_g=cell(length(csvFiles),1);
for k=1:length(csvFiles)
    filename_g{k}=csvFiles(k).name;
    data_g{k}=importdata(filename_g{k});
end
