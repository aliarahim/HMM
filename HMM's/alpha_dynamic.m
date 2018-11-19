function a=alpha_dynamic(M,p,B,v)
T=length(v);
[np,mp] = size(p);
if np == 1
p = p'; 
end
a(:,1) = p.*B(:,v(1));
for i=2:T
a(:,i)=B(:,v(i)).*(M'*a(:,i-1));
end
end
 