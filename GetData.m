%get the values in the Excel using xlsread.
[num] = xlsread('Data.xlsx','A');
[num] = xlsread('Data.xlsx','B');
%combine data as you want:
%save in mat file
deficiencies = num;
save('cleanReducedSummary','ratings');%In your matfile name