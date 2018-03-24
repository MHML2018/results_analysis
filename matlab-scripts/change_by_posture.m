m_phone_with = zeros(11,8);
m_phone_without = zeros(11,8);
for i = 1:11
    for j = 1:5
        m_phone_with(i,phone_with_class(i,j)+1) = ...
                m_phone_with(i,phone_with_class(i,j)+1) + phone_with_duration(i,j);
        m_phone_without(i,phone_without_class(i,j)+1) = ...
                m_phone_without(i,phone_without_class(i,j)+1) + phone_without_duration(i,j);   
    end
end

m_phone_change = (m_phone_without - m_phone_with)/0.3;

mean_phone_change = mean(m_phone_change,1);

m_sort_with = zeros(11,8);
m_sort_without = zeros(11,8);
for i = 1:11
    for j = 1:5
        m_sort_with(i,sort_with_class(i,j)+1) = ...
                m_sort_with(i,sort_with_class(i,j)+1) + sort_with_duration(i,j);
        m_sort_without(i,sort_without_class(i,j)+1) = ...
                m_sort_without(i,sort_without_class(i,j)+1) + sort_without_duration(i,j);   
    end
end

m_sort_change = (m_sort_without - m_sort_with)/0.3;

mean_sort_change = mean(m_sort_change,1);

m_talk_with = zeros(11,8);
m_talk_without = zeros(11,8);
for i = 1:11
    for j = 1:5
        m_talk_with(i,talk_with_class(i,j)+1) = ...
                m_talk_with(i,talk_with_class(i,j)+1) + talk_with_duration(i,j);
        m_talk_without(i,talk_without_class(i,j)+1) = ...
                m_talk_without(i,talk_without_class(i,j)+1) + talk_without_duration(i,j);   
    end
end

m_talk_change = (m_talk_without - m_talk_with)/0.3;

mean_talk_change = mean(m_talk_change,1);

m_type_with = zeros(11,8);
m_type_without = zeros(11,8);
for i = 1:11
    for j = 1:5
        m_type_with(i,type_with_class(i,j)+1) = ...
                m_type_with(i,type_with_class(i,j)+1) + type_with_duration(i,j);
        m_type_without(i,type_without_class(i,j)+1) = ...
                m_type_without(i,type_without_class(i,j)+1) + type_without_duration(i,j);   
    end
end

m_type_change = (m_type_without - m_type_with)/0.3;

mean_type_change = mean(m_type_change,1);

m_change = [mean_phone_change; mean_sort_change; mean_talk_change; mean_type_change];

heatmap(m_change(:,2:6))

h = gca;
h.XData = ["Leaning Forwards" "Leaning Backwards" "Leaning Left" "Leaning Right" "Cross-legged"];
xlabel('Posture')
h.YData = ["Phone" "Sort" "Type" "Talk"];
ylabel('Activity');
title('Reduction in Poor Posture Duration while using SitRight(%)')
