phone_improvement = sum(phone_without_duration,2)-sum(phone_with_duration,2);
phone_percent_improvement = (phone_improvement*100) ./ sum(phone_without_duration,2);
phone_mean_improvement = nanmean(phone_percent_improvement);

sort_improvement = sum(sort_without_duration,2)-sum(sort_with_duration,2);
sort_percent_improvement = (sort_improvement*100) ./ sum(sort_without_duration,2);
sort_mean_improvement = nanmean(sort_percent_improvement);

talk_improvement = sum(talk_without_duration,2)-sum(talk_with_duration,2);
talk_percent_improvement = (talk_improvement*100) ./ sum(talk_without_duration,2);
talk_mean_improvement = nanmean(talk_percent_improvement);

type_improvement = sum(type_without_duration,2)-sum(type_with_duration,2);
type_percent_improvement = (type_improvement*100) ./ sum(type_without_duration,2);
type_mean_improvement = nanmean(type_percent_improvement);

boxplot( [phone_percent_improvement ...
        sort_percent_improvement ...
        talk_percent_improvement ...
        type_percent_improvement]);
refline(0,0);
    
h = gca;
h.XTick = [1 2 3 4];
h.XTickLabel = {'Phone','Sort','Talk','Type'};
xlabel('Activity')
ylabel('Reduction in Bad Posture Duration (%)')
