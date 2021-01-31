%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%    Base program from:
%       Copyright (c) 2005 by Shaikh Faisal Zaheer, faisal.zaheer@gmail.com
%       $Revision: 3.0 $  $Date: 26/12/2005 $
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

function [waveform]=bpsk(bitseq)
%   maps binary 0 to -1 (and 1 to +1, the function actually does not do
%   this , as these values are already at (+)1  )


waveform=ones(1,length(bitseq));
waveform(find(bitseq==0))=-1;