: Delete log files first.
@del Docs\compare_model0_vs_model1.txt
@del Docs\compare_model1_vs_model2.txt
: del Docs\compare_model2_vs_model3.txt

: Execute Model 0, Model 1 and Model 2
@cd "Model 0"\Debug
@echo Running model 0
@"Model 0.exe" ..\..\Audio\speech_2ch.wav ..\out.wav -6 3
@cd ..\..

@cd "Model 1"\Debug
@echo Running model 1
@"Model 1.exe" ..\..\Audio\speech_2ch.wav ..\out.wav -6 3
@cd ..\..

@cd "Model 2"\Debug
@echo Running model 2
@"Model 2.exe" ..\..\Audio\speech_2ch.wav ..\out.wav -6 3
@cd ..\..

: cd model_2_3\
: c:\CirrusDSP\bin\cmdline_simulator.exe -project SimulatorConfigurationTemp.sbr -max_cycles 1000000
: cd ..

: Generate new logs
@echo Results 0vs1 (in Docs/compare_model0_vs_model1.txt):
@Audio\PCMCompare.exe "Model 0/out.wav" "Model 1/out.wav" -b16 2> Docs\compare_model0_vs_model1.txt
@echo Results 1vs2 (in Docs/compare_model1_vs_model2.txt):
@Audio\PCMCompare.exe "Model 1/out.wav" "Model 2/out.wav" -b16 2> Docs\compare_model1_vs_model2.txt

pause
