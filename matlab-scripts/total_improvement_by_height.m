total_improvement = total_time_without-total_time_with;
total_improvement_percent = (total_improvement*100) ./ total_time_without;

plot(height, total_improvement_percent,'x');
xlabel('Height (cm)');
ylabel('Reduction in Poor Posture Duration (%)');
axis([155 190 0 100]);


%Test with PearPson's Linear Correlation Coefficient
[r p] = corr(total_improvement_percent, height)


