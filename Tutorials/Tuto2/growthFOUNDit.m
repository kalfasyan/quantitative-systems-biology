%define the function file

function [vdot] = growth(t,v)

% a general growth model where the concentration of nutrient does not have any influence on the bacterial growth

k=1; 
%The Hill function

nutrient = 21;  %concentration of nutrient

n = 0.8;  % the Hill coefficient, describes how cooperative the two variable are

Ka = 10.5;  % the nutrient concentration occupying half of the cell

theta = (nutrient^n) / (((Ka)^n) + (nutrient^n));


%the Hill Function, models the cooperativitiy between the bacteria and nutrients

vdot = k*(theta)*v; 