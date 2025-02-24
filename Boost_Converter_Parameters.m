P = 3048000; %Solar Panel is set to deliever 3MW constant Power Supply by mppt function
Vin = 11*29; %Output voltage by Solar
fs = 10e3; %Switching Frequency
Vout = 600; %Output at Buck-Boost Converter end
Ioutmax = P/Vout;
delIL = 0.01*Ioutmax*(Vout/Vin); %%Ripple Inductor
delVout = 0.01*Vout;
L = (Vin*(Vout-Vin))/(delIL*fs*Vout);
C = (Ioutmax*(1-(Vin/Vout)))/(fs*delVout);
R = Vout/Ioutmax;
d = (Vout-Vin)/Vout;
