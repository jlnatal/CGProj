function [mosthigh,hival]=find_most_highly(data)


    covMat_raw=cov(data'); 
    covMat=covMat_raw.*(diag(ones(1,size(covMat_raw,1))*nan)+1);

   [row,col]=find(covMat==max(max(covMat)));
   tiedformax=[row col];
   mosthigh=tiedformax(randi(length(tiedformax)),:);
   hival=max(max(covMat));