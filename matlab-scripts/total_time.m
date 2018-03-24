total_time_with = sum(phone_with_duration,2) ...
                    +sum(sort_with_duration,2) ...
                    +sum(talk_with_duration,2) ...
                    +sum(type_with_duration,2);
                    
                    
total_time_without = sum(phone_without_duration,2) ...
                    +sum(sort_without_duration,2) ...
                    +sum(talk_without_duration,2) ...
                    +sum(type_without_duration,2);
                
total_proportion_without = total_time_without/1.2;
total_proportion_with = total_time_with/1.2;

                
boxplot([total_proportion_without total_proportion_with])
h = gca;
h.XTick = [1 2];
h.XTickLabel = {'Without SitRight','With SitRight'};
xlabel('')
ylabel('Percentage Time with Bad posture (%)')

[h,sig,ci] = ttest2(total_time_with,total_time_without)
