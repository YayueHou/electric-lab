%%  清内存 关闭窗口 准备工作
clear 
close all
clc
 
%%  signal
% 三要素
A=2.49/2;                %amplify
f=1000;               %Hz
w=2*pi*f;           %rad/s
p=0;                %rad
%采样
T=0.003;                %s        %观测时间
fs=2000*f;            %Hz       %采样频率
d=1/fs;             %s        %采样间隔
 
 
t1=linspace(0,0.003,1000);      %离散时间t
t2=linspace(0.001,0.0015,1000); 
t3=linspace(0.0005,0.001,1000); 
t4=linspace(0.0015,0.002,1000); 
t5=linspace(0.002,0.0025,1000); 
t6=linspace(0.0025,0.003,1000); 
  s1=A*sin(w*t1+p);
  s2=A*sin((w+400)*(t2-7.5e-5)+p).*(sin((w+400)*(t2-7.5e-5))>0);hold on;
  s3=A*sin((w+400)*(t3-4.5e-5)+p).*(sin((w+400)*(t3-4.5e-5))<0);hold on;
  s4=A*sin((w+400)*(t4-10.5e-5)+p).*(sin((w+400)*(t4-10.5e-5))<0);hold on;
  s5=A*sin((w+400)*(t5-13.5e-5)+p).*(sin((w+400)*(t5-13.5e-5))>0);hold on;
  s6=A*sin((w+400)*(t6-16.5e-5)+p).*(sin((w+400)*(t6-16.5e-5))<0);
 figure(1)
plot(t1,s1,'b');
xlabel('时间/ms');
ylabel('输入电压/V');
