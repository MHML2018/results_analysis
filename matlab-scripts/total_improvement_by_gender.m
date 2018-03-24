total_improvement = total_time_without-total_time_with;
total_improvement_percent = (total_improvement*100) ./ total_time_without;

male_improvement_percent = total_improvement_percent(find(gender == 1));
female_improvement_percent = total_improvement_percent(find(gender == 0));

boxplot([male_improvement_percent(1:4) female_improvement_percent])
h = gca;
h.XTick = [1 2];
h.XTickLabel = {'Male','Female'};
xlabel('Gender')
ylabel('Reduction in Poor Posture Duration(%)')

[h,sig,ci] = ttest2(male_improvement_percent,female_improvement_percent)