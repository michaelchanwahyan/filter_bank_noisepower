close all
clear
clc

% discrete-time filter object.

% MATLAB Code
% Generated by MATLAB(R) 9.7 and Signal Processing Toolbox 8.3.
% Generated on: 03-Jun-5021 12:58:18

% Equiripple Bandpass filter designed using the FIRPM function.

% All frequency values are in Hz.

Fs = 16000;  % Sampling Frequency

N      = 270;   % Order
s      = 10;    % left right cropping offset
Wstop1 = 1;     % First Stopband Weight
Wpass  = 1;     % Passband Weight
Wstop2 = 1;     % Second Stopband Weight
dens   = 20;    % Density Factor


figure;

Fcenter = 125;
% 1st Stopband Freq  ; 1st Passband Freq    ; 2nd Passband Freq    ; 2nd Stopband Freq
Fstop1 = Fcenter - 40; Fpass1 = Fcenter - 20; Fpass2 = Fcenter + 20; Fstop2 = Fcenter + 40;

% Calculate the coefficients using the FIRPM function.
b = firpm(N, [0 Fstop1 Fpass1 Fpass2 Fstop2 Fs/2]/(Fs/2), [0 0 1 1 0 0], [Wstop1 Wpass Wstop2], {dens});
b = b(s+2:N-s);
b = b / norm(b, 2);
b125 = b;
plot([-(length(b) - 1)/2 : (length(b) - 1) / 2], b); %#ok<NBRAK>
hold on;

Fcenter = 256;
% 1st Stopband Freq  ; 1st Passband Freq    ; 2nd Passband Freq    ; 2nd Stopband Freq
Fstop1 = Fcenter - 40; Fpass1 = Fcenter - 20; Fpass2 = Fcenter + 20; Fstop2 = Fcenter + 40;

% Calculate the coefficients using the FIRPM function.
b = firpm(N, [0 Fstop1 Fpass1 Fpass2 Fstop2 Fs/2]/(Fs/2), [0 0 1 1 0 0], [Wstop1 Wpass Wstop2], {dens});
b = b(s+2:N-s);
b = b / norm(b, 2);
b250 = b;
plot([-(length(b) - 1)/2 : (length(b) - 1) / 2], b); %#ok<NBRAK>
hold on;

Fcenter = 500;
% 1st Stopband Freq  ; 1st Passband Freq    ; 2nd Passband Freq    ; 2nd Stopband Freq
Fstop1 = Fcenter - 40; Fpass1 = Fcenter - 20; Fpass2 = Fcenter + 20; Fstop2 = Fcenter + 40;

% Calculate the coefficients using the FIRPM function.
b = firpm(N, [0 Fstop1 Fpass1 Fpass2 Fstop2 Fs/2]/(Fs/2), [0 0 1 1 0 0], [Wstop1 Wpass Wstop2], {dens});
b = b(s+2:N-s);
b = b / norm(b, 2);
b500 = b;
plot([-(length(b) - 1)/2 : (length(b) - 1) / 2], b); %#ok<NBRAK>
hold on;

Fcenter = 1000;
% 1st Stopband Freq  ; 1st Passband Freq    ; 2nd Passband Freq    ; 2nd Stopband Freq
Fstop1 = Fcenter - 40; Fpass1 = Fcenter - 20; Fpass2 = Fcenter + 20; Fstop2 = Fcenter + 40;

% Calculate the coefficients using the FIRPM function.
b = firpm(N, [0 Fstop1 Fpass1 Fpass2 Fstop2 Fs/2]/(Fs/2), [0 0 1 1 0 0], [Wstop1 Wpass Wstop2], {dens});
b = b(s+2:N-s);
b = b / norm(b, 2);
b1000 = b;
plot([-(length(b) - 1)/2 : (length(b) - 1) / 2], b); %#ok<NBRAK>
hold on;

Fcenter = 2000;
% 1st Stopband Freq  ; 1st Passband Freq    ; 2nd Passband Freq    ; 2nd Stopband Freq
Fstop1 = Fcenter - 40; Fpass1 = Fcenter - 20; Fpass2 = Fcenter + 20; Fstop2 = Fcenter + 40;

% Calculate the coefficients using the FIRPM function.
b = firpm(N, [0 Fstop1 Fpass1 Fpass2 Fstop2 Fs/2]/(Fs/2), [0 0 1 1 0 0], [Wstop1 Wpass Wstop2], {dens});
b = b(s+2:N-s);
b = b / norm(b, 2);
b2000 = b;
plot([-(length(b) - 1)/2 : (length(b) - 1) / 2], b); %#ok<NBRAK>
hold on;

Fcenter = 4000;
% 1st Stopband Freq  ; 1st Passband Freq    ; 2nd Passband Freq    ; 2nd Stopband Freq
Fstop1 = Fcenter - 40; Fpass1 = Fcenter - 20; Fpass2 = Fcenter + 20; Fstop2 = Fcenter + 40;

% Calculate the coefficients using the FIRPM function.
b = firpm(N, [0 Fstop1 Fpass1 Fpass2 Fstop2 Fs/2]/(Fs/2), [0 0 1 1 0 0], [Wstop1 Wpass Wstop2], {dens});
b = b(s+2:N-s);
b = b / norm(b, 2);
b4000 = b;
plot([-(length(b) - 1)/2 : (length(b) - 1) / 2], b); %#ok<NBRAK>
hold on;

Fstop = 7960;  % Stopband Frequency
Fpass = 7980;  % Passband Frequency
Wstop = 1;     % Stopband Weight
Wpass = 1;     % Passband Weight
dens  = 20;    % Density Factor

% Calculate the coefficients using the FIRPM function.
b = firpm(N, [0 Fstop Fpass Fs/2]/(Fs/2), [0 0 1 1], [Wstop Wpass], {dens});
b = b(s+2:N-s);
b = b / norm(b, 2);
b8000 = b;
plot([-(length(b) - 1)/2 : (length(b) - 1) / 2], b); %#ok<NBRAK>
hold on;

legend({'125','250','500','1k','2k','4k','8k'});

fprintf('b125 symmetry error: %f\n', norm(b125(1:124) - b125(249:-1:126), 2));
fprintf('b125 filter power = %f\n', b125*b125');
fprintf('b250 symmetry error: %f\n', norm(b250(1:124) - b250(249:-1:126), 2));
fprintf('b250 filter power = %f\n', b250*b250');
fprintf('b500 symmetry error: %f\n', norm(b500(1:124) - b500(249:-1:126), 2));
fprintf('b500 filter power = %f\n', b500*b500');
fprintf('b1000 symmetry error: %f\n', norm(b1000(1:124) - b1000(249:-1:126), 2));
fprintf('b1000 filter power = %f\n', b1000*b1000');
fprintf('b2000 symmetry error: %f\n', norm(b2000(1:124) - b2000(249:-1:126), 2));
fprintf('b2000 filter power = %f\n', b2000*b2000');
fprintf('b4000 symmetry error: %f\n', norm(b4000(1:124) - b4000(249:-1:126), 2));
fprintf('b4000 filter power = %f\n', b4000*b4000');
fprintf('b8000 symmetry error: %f\n', norm(b8000(1:124) - b8000(249:-1:126), 2));
fprintf('b8000 filter power = %f\n', b8000*b8000');


src_str = "";
src_str = src_str + sprintf('double bandpass_filter_125[%d] = {%f', N-2*s-1, b125(1)); for val = b125(2:end); src_str = src_str + sprintf(', %f',val); end; src_str = src_str + '};' + newline;
src_str = src_str + sprintf('double bandpass_filter_250[%d] = {%f', N-2*s-1, b250(1)); for val = b250(2:end); src_str = src_str + sprintf(', %f',val); end; src_str = src_str + '};' + newline;
src_str = src_str + sprintf('double bandpass_filter_500[%d] = {%f', N-2*s-1, b500(1)); for val = b500(2:end); src_str = src_str + sprintf(', %f',val); end; src_str = src_str + '};' + newline;
src_str = src_str + sprintf('double bandpass_filter_1000[%d] = {%f', N-2*s-1, b1000(1)); for val = b1000(2:end); src_str = src_str + sprintf(', %f',val); end; src_str = src_str + '};' + newline;
src_str = src_str + sprintf('double bandpass_filter_2000[%d] = {%f', N-2*s-1, b2000(1)); for val = b2000(2:end); src_str = src_str + sprintf(', %f',val); end; src_str = src_str + '};' + newline;
src_str = src_str + sprintf('double bandpass_filter_4000[%d] = {%f', N-2*s-1, b4000(1)); for val = b4000(2:end); src_str = src_str + sprintf(', %f',val); end; src_str = src_str + '};' + newline;
src_str = src_str + sprintf('double bandpass_filter_8000[%d] = {%f', N-2*s-1, b8000(1)); for val = b8000(2:end); src_str = src_str + sprintf(', %f',val); end; src_str = src_str + '};' + newline;
src_str = src_str + newline;
src_str = src_str + '// signal f[n]'; src_str = src_str + newline;
src_str = src_str + '//    ______'; src_str = src_str + newline;
src_str = src_str + '//   |      |'; src_str = src_str + newline;
src_str = src_str + '//   |      |'; src_str = src_str + newline;
src_str = src_str + '// 0_|      |      ___'; src_str = src_str + newline;
src_str = src_str + '//          |     |'; src_str = src_str + newline;
src_str = src_str + '//          |     |'; src_str = src_str + newline;
src_str = src_str + '//          |_____|'; src_str = src_str + newline;
src_str = src_str + '// filter g[n]'; src_str = src_str + newline;
src_str = src_str + '//      _'; src_str = src_str + newline;
src_str = src_str + '//     / \'; src_str = src_str + newline;
src_str = src_str + '//    /   \'; src_str = src_str + newline;
src_str = src_str + '// 0_/     \__________'; src_str = src_str + newline;
src_str = src_str + '//  <---------------->'; src_str = src_str + newline;
src_str = src_str + '//          W'; src_str = src_str + newline;
src_str = src_str + '// '; src_str = src_str + newline;
src_str = src_str + '// filtered signal power calculation:'; src_str = src_str + newline;
src_str = src_str + '// '; src_str = src_str + newline;
src_str = src_str + '// (itr 1) signal cyclic shift s = 0,'; src_str = src_str + newline;
src_str = src_str + '// elementwise product:'; src_str = src_str + newline;
src_str = src_str + '// filtered signal f[n-0] .* g[n]'; src_str = src_str + newline;
src_str = src_str + '//    ______                    _'; src_str = src_str + newline;
src_str = src_str + '//   | / \  |                  / \'; src_str = src_str + newline;
src_str = src_str + '//   |/   \ |          =>     /   \'; src_str = src_str + newline;
src_str = src_str + '// 0_/     \|_________     0_/     \__________'; src_str = src_str + newline;
src_str = src_str + '// '; src_str = src_str + newline;
src_str = src_str + '// convolved signal at s=0 is sum of impulse value of f[n-0] .* g[n]'; src_str = src_str + newline;
src_str = src_str + '// '; src_str = src_str + newline;
src_str = src_str + '// (itr 2) signal cyclic shift s = 1,'; src_str = src_str + newline;
src_str = src_str + '// elementwise product:'; src_str = src_str + newline;
src_str = src_str + '// filtered signal f[n-1] .* g[n]'; src_str = src_str + newline;
src_str = src_str + '//    ______                     _'; src_str = src_str + newline;
src_str = src_str + '//   |  / \ |                   / \'; src_str = src_str + newline;
src_str = src_str + '//   | /   \|          =>      /   \'; src_str = src_str + newline;
src_str = src_str + '// 0__/     \_________     0__/    |__________'; src_str = src_str + newline;
src_str = src_str + '// '; src_str = src_str + newline;
src_str = src_str + '// convolved signal at s=1 is sum of impulse value of f[n-1] .* g[n]'; src_str = src_str + newline;
src_str = src_str + '// '; src_str = src_str + newline;
src_str = src_str + '// (itr 3) signal cyclic shift s = 2,'; src_str = src_str + newline;
src_str = src_str + '// elementwise product:'; src_str = src_str + newline;
src_str = src_str + '// filtered signal f[n-2] .* g[n]'; src_str = src_str + newline;
src_str = src_str + '//    ______                      _'; src_str = src_str + newline;
src_str = src_str + '//   |   / \|                    / \'; src_str = src_str + newline;
src_str = src_str + '//   |  /   \          =>       /  |'; src_str = src_str + newline;
src_str = src_str + '// 0_|_/    |_________     0___/   |__________'; src_str = src_str + newline;
src_str = src_str + '// '; src_str = src_str + newline;
src_str = src_str + '// convolved signal at s=2 is sum of impulse value of f[n-2] .* g[n]'; src_str = src_str + newline;
src_str = src_str + '// '; src_str = src_str + newline;
src_str = src_str + '// ... etc.'; src_str = src_str + newline;
src_str = src_str + ''; src_str = src_str + newline;
src_str = src_str + newline;
src_str = src_str + 'double sig_fil_pow(short * sig, double * fil) {'; src_str = src_str + newline;
src_str = src_str + sprintf('    const size_t W = %d; // filter window width', N-2*s-1); src_str = src_str + newline;
src_str = src_str + '    double __filSigPow_accu__ = 0.0; // filtered signal power, for accumulation'; src_str = src_str + newline;
src_str = src_str + '    double __filSigAmplt_instant__; // filter signal instantaneous amplitude (can be +ve or -ve)'; src_str = src_str + newline;
src_str = src_str + '    for (size_t s = 0; s < W; ++s) { // s being convolution shift'; src_str = src_str + newline;
src_str = src_str + '        __filSigAmplt_instant__ = 0.0;'; src_str = src_str + newline;
src_str = src_str + '        for (size_t w = 0; w < W; ++w) {'; src_str = src_str + newline;
src_str = src_str + '            __filSigAmplt_instant__ += sig[(w+s)%W] * fil[W-w-1];'; src_str = src_str + newline;
src_str = src_str + '        }'; src_str = src_str + newline;
src_str = src_str + '        __filSigPow_accu__ += __filSigAmplt_instant__ * __filSigAmplt_instant__;'; src_str = src_str + newline;
src_str = src_str + '    }'; src_str = src_str + newline;
src_str = src_str + '    return __filSigPow_accu__;'; src_str = src_str + newline;
src_str = src_str + '}'; src_str = src_str + newline;
 
fid = fopen('filter_filterbank.cpp', 'wt');
fprintf(fid, '%s', src_str);
fclose(fid);
