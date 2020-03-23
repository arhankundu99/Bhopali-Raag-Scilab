clear all; //Clears all variable 
Fs=16000;//Sampling frequency
N=1:8000;//Total number of samples for each tone
frequencyMatrix=[240 270 303.75 360 405 480];
result_signal=[];
for i = 1:6//for loop corresponding to Aroha
    Frequency=frequencyMatrix(i);
    signal=sin(2*%pi*Frequency*N/Fs);//The signal corresponding to ith frequency
    result_signal=[result_signal signal];
end;
for i = 1:6//for loop corresponding to Avaroha
    Frequency=frequencyMatrix(7-i);
    signal=sin(2*%pi*Frequency*N/Fs);
    result_signal=[result_signal signal];
end;
for i = 1:6
    Frequency=frequencyMatrix(i);
    signal=sin(2*%pi*Frequency*N/Fs);
    result_signal=[result_signal signal];
end;
for i = 1:6
    Frequency=frequencyMatrix(7-i);
    signal=sin(2*%pi*Frequency*N/Fs);
    result_signal=[result_signal signal];
end;
sound(result_signal,Fs); //The code to play the signal
