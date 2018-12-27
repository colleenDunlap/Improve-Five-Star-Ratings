%© Colleen Dunlap
%1/21/2017
LTWeight = .054;
SQOCWeight = .466;
AdminWeight = .1367;
MisWeight = .1929;
NutWeight = .306;
PharWeight = .1881;
QCWeight = .1685;
RightsWeight = .2411;
a = LTWeight *(5- m(row,2));
b = SQOCWeight * (5-m(row,3));
c = AdminWeight * (5-m(row,4));
d = MisWeight * (5-m(row,5));
e = NutWeight * (5-m(row,6));
f = PharWeight * (5-m(row,7));
g = QCWeight * (5-m(row,8));
h = RightsWeight * (5-m(row,9));
total = a+b+c+d+e+f+g+h;
X = [a b c d e f g h]/total;
labels = {'LifeThreat', 'Substandard QOC', 'Administration', 'Mistreatment', 'Nutrition', 'Pharmacy', 'Quality Care', 'Rights'};
pie(X,labels);
title('Negative Impact in Specific SubCategories of Survey Rating');