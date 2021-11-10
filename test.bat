: Delete log files first.
del Docs\compare_model0_vs_model1.txt
: del Docs\compare_model1_vs_model2.txt
: del Docs\compare_model2_vs_model3.txt

: Execute Model 0, Model 1 and Model 2
cd "Model 0"\Debug
"Model 0.exe" ..\..\Audio\speech_2ch.wav ..\out.wav 0 0
cd ..\..

cd "Model 1"\Debug
"Model 1.exe" ..\..\Audio\speech_2ch.wav ..\out.wav 0 0
cd ..\..

: cd model_2_3\Debug
: "filter Model2.exe"
: cd ..\..

: cd model_2_3\
: c:\CirrusDSP\bin\cmdline_simulator.exe -project SimulatorConfigurationTemp.sbr -max_cycles 1000000
: cd ..

: Generate new logs
Audio\PCMCompare.exe "Model 0/out.wav" "Model 1/out.wav" -b16 2> Docs\compare_model0_vs_model1.txt



