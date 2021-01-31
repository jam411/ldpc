load x1.mat H
load x2.mat x2
load x3.mat x3
H;
l = x2;
max_iter = x3;
chat = ldpc_decoder(H,-l,max_iter);