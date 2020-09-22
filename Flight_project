close all
clear all
clc

%% Part 2
% Battery specifications
% Rhino 6200mAh 4S 50C Lipo Battery Pack w/XT90
% Turnigy Rapid 5500mAh 4S2P 140C Hardcase Lipo Battery Pack w/XT90 Connector

% V = 20.8/3.6; %Required speed
V = [5.78:1.31:15]; %Ranges of velocities from minimum required to maximum allowed
voltage = [14.8 14.8]; 
ah = [6200 5500]*10^(-3); 
mass = [705 543]*10^(-3); %kg
totalweight = 6 + mass; %Total weight of UAV
ae = 10; %Aerodynamic efficiency
pe = 0.8; %Propulsion efficiency
g = 9.81;

  for j = 1:length(V) 

    for i = 1:length(ah)
        Espec(i,j) = voltage(i)*ah(i)/mass(i); 
        MFbatt(i,j) = mass(i)/totalweight(i);
        E(i,j) = Espec(i,j)*MFbatt(i,j)*pe*ae/(g*V(j))*60^2; %Endurance 
        R(i,j) = V(j)*E(i,j); %Range
    end

  end

plot(V,E(1,:),V,E(2,:))
title('Endurance as a function of cruise velocities');
xlabel('Cruise velocity [m/s])');
ylabel('Endurance [s]');

%%Part 3


