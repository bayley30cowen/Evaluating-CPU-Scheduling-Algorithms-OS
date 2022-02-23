mkdir -p classes
javac -d classes ../src/*.java

cd classes
#Experiment 1#
#Input Generation for exp1
for i in {1..3}
do
java InputGenerator ../../experiment1/Seed$i/input_parameters1.prp ../../experiment1/Seed$i/input1.in
java InputGenerator ../../experiment1/Seed$i/input_parameters2.prp ../../experiment1/Seed$i/input2.in
java InputGenerator ../../experiment1/Seed$i/input_parameters3.prp ../../experiment1/Seed$i/input3.in
java InputGenerator ../../experiment1/Seed$i/input_parameters4.prp ../../experiment1/Seed$i/input4.in
java InputGenerator ../../experiment1/Seed$i/input_parameters5.prp ../../experiment1/Seed$i/input5.in
java InputGenerator ../../experiment1/Seed$i/input_parameters6.prp ../../experiment1/Seed$i/input6.in
java InputGenerator ../../experiment1/Seed$i/input_parameters7.prp ../../experiment1/Seed$i/input7.in
done
#Experiment 1 Simulation for First Come First Served implementation
for i in {1..3}
do
java Simulator ../../experiment1/Seed$i/simulator_parametersfcfs.prp ../../experiment1/Seed$i/FCFSoutput1.out ../../experiment1/Seed$i/input1.in
java Simulator ../../experiment1/Seed$i/simulator_parametersfcfs.prp ../../experiment1/Seed$i/FCFSoutput2.out ../../experiment1/Seed$i/input2.in
java Simulator ../../experiment1/Seed$i/simulator_parametersfcfs.prp ../../experiment1/Seed$i/FCFSoutput3.out ../../experiment1/Seed$i/input3.in
java Simulator ../../experiment1/Seed$i/simulator_parametersfcfs.prp ../../experiment1/Seed$i/FCFSoutput4.out ../../experiment1/Seed$i/input4.in
java Simulator ../../experiment1/Seed$i/simulator_parametersfcfs.prp ../../experiment1/Seed$i/FCFSoutput5.out ../../experiment1/Seed$i/input5.in
java Simulator ../../experiment1/Seed$i/simulator_parametersfcfs.prp ../../experiment1/Seed$i/FCFSoutput6.out ../../experiment1/Seed$i/input6.in
java Simulator ../../experiment1/Seed$i/simulator_parametersfcfs.prp ../../experiment1/Seed$i/FCFSoutput7.out ../../experiment1/Seed$i/input7.in
done

#Experiment 1 Simulation for Round Robin implementation
for i in {1..3}
do
java Simulator ../../experiment1/Seed$i/simulator_parametersrr.prp ../../experiment1/Seed$i/RRoutput1.out ../../experiment1/Seed$i/input1.in
java Simulator ../../experiment1/Seed$i/simulator_parametersrr.prp ../../experiment1/Seed$i/RRoutput2.out ../../experiment1/Seed$i/input2.in
java Simulator ../../experiment1/Seed$i/simulator_parametersrr.prp ../../experiment1/Seed$i/RRoutput3.out ../../experiment1/Seed$i/input3.in
java Simulator ../../experiment1/Seed$i/simulator_parametersrr.prp ../../experiment1/Seed$i/RRoutput4.out ../../experiment1/Seed$i/input4.in
java Simulator ../../experiment1/Seed$i/simulator_parametersrr.prp ../../experiment1/Seed$i/RRoutput5.out ../../experiment1/Seed$i/input5.in
java Simulator ../../experiment1/Seed$i/simulator_parametersrr.prp ../../experiment1/Seed$i/RRoutput6.out ../../experiment1/Seed$i/input6.in
java Simulator ../../experiment1/Seed$i/simulator_parametersrr.prp ../../experiment1/Seed$i/RRoutput7.out ../../experiment1/Seed$i/input7.in
done

#Experiment 1 Simulation for Idea; Shortest Job First implementation
for i in {1..3}
do
java Simulator ../../experiment1/Seed$i/simulator_parametersideal.prp ../../experiment1/Seed$i/IDEALoutput1.out ../../experiment1/Seed$i/input1.in
java Simulator ../../experiment1/Seed$i/simulator_parametersideal.prp ../../experiment1/Seed$i/IDEALoutput2.out ../../experiment1/Seed$i/input2.in
java Simulator ../../experiment1/Seed$i/simulator_parametersideal.prp ../../experiment1/Seed$i/IDEALoutput3.out ../../experiment1/Seed$i/input3.in
java Simulator ../../experiment1/Seed$i/simulator_parametersideal.prp ../../experiment1/Seed$i/IDEALoutput4.out ../../experiment1/Seed$i/input4.in
java Simulator ../../experiment1/Seed$i/simulator_parametersideal.prp ../../experiment1/Seed$i/IDEALoutput5.out ../../experiment1/Seed$i/input5.in
java Simulator ../../experiment1/Seed$i/simulator_parametersideal.prp ../../experiment1/Seed$i/IDEALoutput6.out ../../experiment1/Seed$i/input6.in
java Simulator ../../experiment1/Seed$i/simulator_parametersideal.prp ../../experiment1/Seed$i/IDEALoutput7.out ../../experiment1/Seed$i/input7.in
done


#Experiment 2#
#Input Generation for experiment 2
for i in {1..3}
do
java InputGenerator ../../experiment2/Seed$i/input_parameters1.prp ../../experiment2/Seed$i/input1.in
java InputGenerator ../../experiment2/Seed$i/input_parameters2.prp ../../experiment2/Seed$i/input2.in
java InputGenerator ../../experiment2/Seed$i/input_parameters3.prp ../../experiment2/Seed$i/input3.in
java InputGenerator ../../experiment2/Seed$i/input_parameters4.prp ../../experiment2/Seed$i/input4.in
java InputGenerator ../../experiment2/Seed$i/input_parameters5.prp ../../experiment2/Seed$i/input5.in
done

#Experiment 2 Simulation for First Come First Served implementation
for i in {1..3}
do
java Simulator ../../experiment2/Seed$i/simulator_parameters_fcfs.prp ../../experiment2/Seed$i/outputf1.out ../../experiment2/Seed$i/input1.in
java Simulator ../../experiment2/Seed$i/simulator_parameters_fcfs.prp ../../experiment2/Seed$i/outputf2.out ../../experiment2/Seed$i/input2.in
java Simulator ../../experiment2/Seed$i/simulator_parameters_fcfs.prp ../../experiment2/Seed$i/outputf3.out ../../experiment2/Seed$i/input3.in
java Simulator ../../experiment2/Seed$i/simulator_parameters_fcfs.prp ../../experiment2/Seed$i/outputf4.out ../../experiment2/Seed$i/input4.in
java Simulator ../../experiment2/Seed$i/simulator_parameters_fcfs.prp ../../experiment2/Seed$i/outputf5.out ../../experiment2/Seed$i/input5.in
done

#Experiment 2 Simulation for Shortest Job First (not using exponential averaging) implementation
for i in {1..3}
do
java Simulator ../../experiment2/Seed$i/simulator_parameters_sjf.prp ../../experiment2/Seed$i/outputs1.out ../../experiment2/Seed$i/input1.in
java Simulator ../../experiment2/Seed$i/simulator_parameters_sjf.prp ../../experiment2/Seed$i/outputs2.out ../../experiment2/Seed$i/input2.in
java Simulator ../../experiment2/Seed$i/simulator_parameters_sjf.prp ../../experiment2/Seed$i/outputs3.out ../../experiment2/Seed$i/input3.in
java Simulator ../../experiment2/Seed$i/simulator_parameters_sjf.prp ../../experiment2/Seed$i/outputs4.out ../../experiment2/Seed$i/input4.in
java Simulator ../../experiment2/Seed$i/simulator_parameters_sjf.prp ../../experiment2/Seed$i/outputs5.out ../../experiment2/Seed$i/input5.in
done


#Experiment 3#
#Input Generation for experiment 3
for i in {1..3}
do
java InputGenerator ../../experiment3/Seed$i/input_parameters.prp ../../experiment3/Seed$i/input.in
done

#Experiment 3 Simulation for Round Robin implementation
for i in {1..3}
do
java Simulator ../../experiment3/Seed$i/simulator_parameters1_RR.prp ../../experiment3/Seed$i/outputRR1.out ../../experiment3/Seed$i/input.in
java Simulator ../../experiment3/Seed$i/simulator_parameters2_RR.prp ../../experiment3/Seed$i/outputRR2.out ../../experiment3/Seed$i/input.in
java Simulator ../../experiment3/Seed$i/simulator_parameters3_RR.prp ../../experiment3/Seed$i/outputRR3.out ../../experiment3/Seed$i/input.in
java Simulator ../../experiment3/Seed$i/simulator_parameters4_RR.prp ../../experiment3/Seed$i/outputRR4.out ../../experiment3/Seed$i/input.in
java Simulator ../../experiment3/Seed$i/simulator_parameters5_RR.prp ../../experiment3/Seed$i/outputRR5.out ../../experiment3/Seed$i/input.in
java Simulator ../../experiment3/Seed$i/simulator_parameters6_RR.prp ../../experiment3/Seed$i/outputRR6.out ../../experiment3/Seed$i/input.in
done

#Experiment 3 Simulation for Multilevel Feedback Queue with Round Robin implementation
for i in {1..3}
do
java Simulator ../../experiment3/Seed$i/simulator_parameters1_Feed.prp ../../experiment3/Seed$i/outputFeed1.out ../../experiment3/Seed$i/input.in
java Simulator ../../experiment3/Seed$i/simulator_parameters2_Feed.prp ../../experiment3/Seed$i/outputFeed2.out ../../experiment3/Seed$i/input.in
java Simulator ../../experiment3/Seed$i/simulator_parameters3_Feed.prp ../../experiment3/Seed$i/outputFeed3.out ../../experiment3/Seed$i/input.in
java Simulator ../../experiment3/Seed$i/simulator_parameters4_Feed.prp ../../experiment3/Seed$i/outputFeed4.out ../../experiment3/Seed$i/input.in
java Simulator ../../experiment3/Seed$i/simulator_parameters5_Feed.prp ../../experiment3/Seed$i/outputFeed5.out ../../experiment3/Seed$i/input.in
java Simulator ../../experiment3/Seed$i/simulator_parameters6_Feed.prp ../../experiment3/Seed$i/outputFeed6.out ../../experiment3/Seed$i/input.in
done
