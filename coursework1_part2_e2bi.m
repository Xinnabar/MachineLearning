%% Exercise 2(bi)

x_samples = sort(rand(30,1));
    
data_points = [];
    data_points_num = numel(x_samples);
for i = 1:data_points_num
    data_points = [data_points gsig(0.07,x_samples(i))];
end
    
x_range = linspace(0,1);
y_range = sin(2*pi*x_range).*sin(2*pi*x_range);

hold on;
plot(x_range,y_range,'Color',[1,0.5,0.0],'LineWidth',1.5); grid on;
% Superimpose data set from 2(a)
scatter(x_samples,data_points,10,'filled','MarkerEdgeColor','black','MarkerFaceColor','blue');legend('y = sin^2(2pi*x)','Data Points'); ... 
    title('Plot of the function sin^2(2pi*x) over the range [0,1], with data points superimposed','FontSize',16);
    set(gcf,'color','w');
hold off;    