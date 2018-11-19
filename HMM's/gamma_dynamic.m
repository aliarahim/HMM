
function g = gamma_dynamic(alpha,beta)
[np T]=size(alpha);
g=zeros(np,T)
for t=1:T
    for i=1:np
        g(i,t)=alpha(i,t)*beta(i,t)/(sum(alpha(:,t).*beta(:,t)));
    end
end