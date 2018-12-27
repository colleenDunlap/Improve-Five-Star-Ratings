%© Colleen Dunlap
%1/21/2017
SubstdWeight = .0003;
MisWeight = .154;
QualWeight = .0929;
a = SubstdWeight * (5 - m(row,3));
b = MisWeight * (5 - m(row,5));
c = QualWeight * (5- m(row,8));
total = a+b+c;
X2 = [a, b, c]/total;
labels2={'Substandard QOC' , 'Mistreatment', 'Quality of Care'};
pie(X,labels2);
title('Negative Impact in Specific SubCategories of Quality Rating');