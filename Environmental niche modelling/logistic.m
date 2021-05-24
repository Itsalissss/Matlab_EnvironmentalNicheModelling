%logistic() describes a logistic function that has a threshold response around x=beta for
%small absolute values of alpha and a more gradual response for larger 
%absolute values of alpha. For alpha>0, y decreases from 1 to 0. For 
%alpha<0, y increases from 0 to 1.


function y=logistic(x,alpha,beta)
    y=1./(1+exp((x-beta)./alpha));
end
