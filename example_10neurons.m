% Visualization on Sample Data

miniJ=zeros(14);
miniJ(2,11)=1;
miniJ(3,11)=1;
miniJ(11,13)=1;
miniJ(5,13)=1;
miniJ(6,12)=1;
miniJ(8,12)=1;
miniJ(9,14)=1;
miniJ(10,14)=1;
minipos=[[ones(1,10)' (1:10)']; [2 11; 2 12; 3 13]; [2 14];];

gplot(miniJ,minipos)
hold on
scatter(minipos(:,1),minipos(:,2),50)
yticks([1:14])
xticks([1 2 3])
scatter(minipos([1 4 7 11:14],1),minipos([1 4 7 11:14],2),50,'filled')
title('Coarse-grained neurons: Final network')
xlabel('Layer of resulting network')
ylabel('Neuron Index')
set(gca,'FontSize',14)
ylim([0 15])
