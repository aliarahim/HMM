function b=beta_dynamic(M,p,B,v)
T=length(v);
[np,mp] = size(M);
b=ones(mp,T);
for i = T-1:-1:1
    b(:,i)=M*(b(:,i+1).*B(:,v(i+1)));
end
end