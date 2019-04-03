%for k=1:953
%    
%    act=J0+data([indies],k)'*[J1;J2];
%    sigma(k)=(exp((act))./(2*cosh(act))>rand)*2-1;
%    
%end



    act=sum(J0+data(mosthigh,:).*[J1;J2]);
    sigma=(exp(act)./(2*cosh(act))>rand(1,953))*2-1;
    

    meansig=mean(sigma,2);
    
    
%for k=1:953
    
%    check_act=sigma(k)*[J1;J2];
%    vis(:,k)=(exp((check_act))./(2.*cosh(check_act))>rand)*2-1;
    
%end

    %num_samps=10000;
    num_samps=953;
    samples=(rand(1,num_samps)<sum(sigma>0)/953)*2-1;
    check_act=[samples; samples].*[J1;J2];
    vis=(exp((check_act))./(2.*cosh(check_act))>rand(2,num_samps))*2-1;
    
    [mean(vis,2)' mean(vis(1,:).*vis(2,:),2); means pairwise];
    
    