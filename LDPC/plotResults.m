clear all

% load results
%load results204Gallager.mat g204dB g204BER g204BLER
load results204PEG.mat p204dB p204BER p204BLER
load results504Gallager.mat g504dB g504BER g504BLER
load results504PEG.mat p504dB p504BER p504BLER

load results256regular.mat r256dB r256BER r256BLER
load results256PEG.mat p256dB p256BER p256BLER

load results32Gallager.mat g32dB g32BER g32BLER
load results32PEG.mat p32dB p32BER p32BLER

load results204Gallager2.mat g204dB g204BER g204BLER
load results204PEG2.mat p2204dB p2204BER p2204BLER

%semilogy(g204dB,g204BER,'b>:','DisplayName','Gallager204')
%semilogy(g504dB,g504BER,'b>:','DisplayName','Gallager504')
%semilogy(r256dB,r256BLER,'b>-','DisplayName','regular256')
%semilogy(g32dB,g32BER,'b>:','DisplayName','Gallager32')
semilogy(g204dB,g204BER,'b>:','DisplayName','Gallager2204')
hold on
semilogy(p204dB,p204BER,'ro:','DisplayName','PEG204')
%semilogy(g204dB,g204BLER,'b>-','DisplayName','Gallager204')
semilogy(p204dB,p204BLER,'ro-','DisplayName','PEG204')
%semilogy(p504dB,p504BER,'ro:','DisplayName','PEG504')
%semilogy(g504dB,g504BLER,'b>-','DisplayName','Gallager504')
%semilogy(p504dB,p504BLER,'ro-','DisplayName','PEG504')
%semilogy(p256dB,p256BLER,'ro-','DisplayName','PEG256')
%semilogy(p32dB,p32BER,'ro:','DisplayName','PEG32')
%semilogy(g32dB,g32BLER,'b>-','DisplayName','Gallager32')
%semilogy(p32dB,p32BLER,'ro-','DisplayName','PEG32')
semilogy(p2204dB,p2204BER,'ro:','DisplayName','PEG2204')
%semilogy(g204dB,g204BLER,'b>-','DisplayName','Gallager2204')
semilogy(p2204dB,p2204BLER,'ro-','DisplayName','PEG2204')

%title('80 iterations, Code: n = 204, m = 102, ds = 3, dc = 6')
%title('80 iterations, Code: n = 504, m = 254, ds = 3, dc = 6')
%title('80 iterations, Code: n = 32, m = 16, ds = 2, dc = 4')
title('80 iterations, Code: n = 204, m = 102, ds = 2, dc = 4')
ylabel('Error Rate')
xlabel('Signal-to-noise ratio per bit, Eb/No (dB)')
legend('Gallager code, bit error','PEG code, bit error','Gallager code, block error','PEG code, block error')%'Gallager504','PEG504','Gallager204e','PEG204e','Gallager504e','PEG504e')
grid on

hold off