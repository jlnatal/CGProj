function [covA_raw,covA]=cov_matrix(A);

    covA_raw=cov(A');
    covA=covA_raw.*(diag(ones(1,size(A,1))*nan)+1);