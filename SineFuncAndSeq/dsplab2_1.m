x0 = 1;
f0 = 8;
Ts = 1/(8*f0);
t = 0:0.01:20;
x_t = x0*sin(2*pi*f0*Ts*t);
n = 0:20;
w0 = 2*pi*f0*Ts;
x_n = x0*sin(w0*n);

FIG1 = figure('Name','dsplab2_1', 'NumberTitle','off');

subplot(2,1,1);
plot(t,x_t, 'LineWidth',2);
grid;
xlabel('Time {\itt} in seconds \rightarrow');
ylabel('{\itx}({\itt}) / {\itx}_0 \rightarrow');

subplot(2,1,2);
stem(n,x_n, 'filled');
grid;
xlabel('Time index {\itn} \rightarrow');
ylabel('{\itx}[{\itn}] / {\itx}_0 \rightarrow');