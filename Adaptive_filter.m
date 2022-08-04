%https://www.imageeprocessing.com/2011/12/adaptive-filtering-local-noise-filter.html
clear all
clf 
clc
B = [.9361,1,1,.8871;1,1,.9184,1;.9868,1,1, .9591; 0,.8987,.94,1];
sz = size(B,1)*size(B,2);
B = double(B);
%Define the window size mxn
M = 3;
N = 3;
%Pad the matrix with zeros on all sides
C = padarray(B,[floor(M/2),floor(N/2)]);
lvar = zeros([size(B,1) size(B,2)]);
lmean = zeros([size(B,1) size(B,2)]);
temp = zeros([size(B,1) size(B,2)]);

for i = 1:size(C,1)-(M-1)
    for j = 1:size(C,2)-(N-1)
            
        temp = C(i:i+(M-1),j:j+(N-1));
        tmp =  temp(:);
        %Find the local mean and local variance for the local region        
        lmean(i,j) = mean(tmp);
        lvar(i,j) = mean(tmp.^2)-mean(tmp).^2;
        
    end
end

%Noise variance and average of the local variance
nvar = sum(lvar(:))/sz;

%If noise_variance > local_variance then local_variance=noise_variance
 lvar = max(lvar,nvar);     

%Final_Image = B- (noise variance/local variance)*(B-local_mean);
NewImg = nvar./lvar;
temp_NewImg=NewImg;
b_minus_lmean=B-lmean;
NewImg = NewImg.*(b_minus_lmean);
NewImg = B-NewImg;


 
