%© Colleen Dunlap
%1/21/2017
SurveyWeight = .7728;
QualityWeight = .3147;
StaffingWeight = .3989;
ProvNum=input('Please Enter your Provider ID Number: ');
row = 0;
for i = 1:222
   if  ratings(i,1) == ProvNum
        row = i;
   end
end
rate = ratings(row,2);
fprintf('Your current rating is %i \n', rate);
SurveyDec = (5-ratings(row,3))*.7728;
QualityDec = (5-ratings(row,4)) * .3147;
StaffingDec = (5-ratings(row,5)) * .3989;
total = SurveyDec + QualityDec + StaffingDec;
SurveyImpact = SurveyDec/total;
QualityImpact = QualityDec/total;
StaffingImpact = StaffingDec/total;
% disp(SurveyImpact);
% disp(QualityImpact);
% disp(StaffingImpact);
X1 = [SurveyImpact QualityImpact StaffingImpact];
labels1 = {'Survey Score', 'Quality Score' ,'Staffing Score'};
pie(X1, labels1);
title('Negative Impact in Specific SubCategories');
hold on;
figure;

priority = sort(X1);
Epic = priority(3);
if(Epic == SurveyImpact)
    SurveyWeights
end
if(Epic == QualityImpact)
   QualityWeights
end    


