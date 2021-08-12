#!/bin/bash

mvn package -DskipTests=true

cp ./master/target/evosuite-master-1.1.1-SNAPSHOT.jar ./Test/evosuite.jar

cd Test

cd Downloader

for run in {1..20}; do java -jar ./../evosuite.jar -class Newzgrabber.Downloader -Doutput_variables=TARGET_CLASS,Fitness,Coverage; done

for run in {1..20}; do java -jar ./../evosuite.jar -class Newzgrabber.Downloader -Dcrossover_function=Weighted -Doutput_variables=TARGET_CLASS,Fitness,Coverage; done

for run in {1..20}; do java -jar ./../evosuite.jar -class Newzgrabber.Downloader -Dcrossover_function=Twopoints -Doutput_variables=TARGET_CLASS,Fitness,Coverage; done

cd ../Main

for run in {1..20}; do java -jar ./../evosuite.jar -class apbs_mem_gui.Main -Doutput_variables=TARGET_CLASS,Fitness,Coverage; done

for run in {1..20}; do java -jar ./../evosuite.jar -class apbs_mem_gui.Main -Dcrossover_function=Weighted -Doutput_variables=TARGET_CLASS,Fitness,Coverage; done

for run in {1..20}; do java -jar ./../evosuite.jar -class apbs_mem_gui.Main -Dcrossover_function=Twopoints -Doutput_variables=TARGET_CLASS,Fitness,Coverage; done

cd ../Battle

for run in {1..20}; do java -jar ./../evosuite.jar -class src.Battle -Doutput_variables=TARGET_CLASS,Fitness,Coverage; done

for run in {1..20}; do java -jar ./../evosuite.jar -class src.Battle -Dcrossover_function=Weighted -Doutput_variables=TARGET_CLASS,Fitness,Coverage; done

for run in {1..20}; do java -jar ./../evosuite.jar -class src.Battle -Dcrossover_function=Twopoints -Doutput_variables=TARGET_CLASS,Fitness,Coverage; done

cd ../EWrapperMsgGenerator

for run in {1..20}; do java -jar ./../evosuite.jar -class com.ib.client.EWrapperMsgGenerator -Doutput_variables=TARGET_CLASS,Fitness,Coverage; done

for run in {1..20}; do java -jar ./../evosuite.jar -class com.ib.client.EWrapperMsgGenerator -Dcrossover_function=Weighted -Doutput_variables=TARGET_CLASS,Fitness,Coverage; done

for run in {1..20}; do java -jar ./../evosuite.jar -class com.ib.client.EWrapperMsgGenerator -Dcrossover_function=Twopoints -Doutput_variables=TARGET_CLASS,Fitness,Coverage; done

cd ../HttpFileUtils

for run in {1..20}; do java -jar ./../evosuite.jar -class httpanalyzer.HttpFileUtils -Doutput_variables=TARGET_CLASS,Fitness,Coverage; done

for run in {1..20}; do java -jar ./../evosuite.jar -class httpanalyzer.HttpFileUtils -Dcrossover_function=Weighted -Doutput_variables=TARGET_CLASS,Fitness,Coverage; done

for run in {1..20}; do java -jar ./../evosuite.jar -class httpanalyzer.HttpFileUtils -Dcrossover_function=Twopoints -Doutput_variables=TARGET_CLASS,Fitness,Coverage; done

cd ../JCLO

for run in {1..20}; do java -jar ./../evosuite.jar -class edu.mscd.cs.jclo.JCLO -Doutput_variables=TARGET_CLASS,Fitness,Coverage; done

for run in {1..20}; do java -jar ./../evosuite.jar -class edu.mscd.cs.jclo.JCLO -Dcrossover_function=Weighted -Doutput_variables=TARGET_CLASS,Fitness,Coverage; done

for run in {1..20}; do java -jar ./../evosuite.jar -class edu.mscd.cs.jclo.JCLO -Dcrossover_function=Twopoints -Doutput_variables=TARGET_CLASS,Fitness,Coverage; done

cd ../MyString

for run in {1..20}; do java -jar ./../evosuite.jar -class org.quickserver.util.MyString -Doutput_variables=TARGET_CLASS,Fitness,Coverage; done

for run in {1..20}; do java -jar ./../evosuite.jar -class org.quickserver.util.MyString -Dcrossover_function=Weighted -Doutput_variables=TARGET_CLASS,Fitness,Coverage; done

for run in {1..20}; do java -jar ./../evosuite.jar -class org.quickserver.util.MyString -Dcrossover_function=Twopoints -Doutput_variables=TARGET_CLASS,Fitness,Coverage; done

cd ../SAPControl_BindingStub

for run in {1..20}; do java -jar ./../evosuite.jar -class com.sap.managementconsole.soap.axis.sapcontrol.SAPControl_BindingStub -Doutput_variables=TARGET_CLASS,Fitness,Coverage; done

for run in {1..20}; do java -jar ./../evosuite.jar -class com.sap.managementconsole.soap.axis.sapcontrol.SAPControl_BindingStub -Dcrossover_function=Weighted -Doutput_variables=TARGET_CLASS,Fitness,Coverage; done

for run in {1..20}; do java -jar ./../evosuite.jar -class com.sap.managementconsole.soap.axis.sapcontrol.SAPControl_BindingStub -Dcrossover_function=Twopoints -Doutput_variables=TARGET_CLASS,Fitness,Coverage; done

cd ../SenderService

for run in {1..20}; do java -jar ./../evosuite.jar -class de.huxhorn.lilith.services.sender.SenderService -Doutput_variables=TARGET_CLASS,Fitness,Coverage; done

for run in {1..20}; do java -jar ./../evosuite.jar -class de.huxhorn.lilith.services.sender.SenderService -Dcrossover_function=Weighted -Doutput_variables=TARGET_CLASS,Fitness,Coverage; done

for run in {1..20}; do java -jar ./../evosuite.jar -class de.huxhorn.lilith.services.sender.SenderService -Dcrossover_function=Twopoints -Doutput_variables=TARGET_CLASS,Fitness,Coverage; done

cd ../Variable

for run in {1..20}; do java -jar ./../evosuite.jar -class macaw.businessLayer.Variable -Doutput_variables=TARGET_CLASS,Fitness,Coverage; done

for run in {1..20}; do java -jar ./../evosuite.jar -class macaw.businessLayer.Variable -Dcrossover_function=Weighted -Doutput_variables=TARGET_CLASS,Fitness,Coverage; done

for run in {1..20}; do java -jar ./../evosuite.jar -class macaw.businessLayer.Variable -Dcrossover_function=Twopoints -Doutput_variables=TARGET_CLASS,Fitness,Coverage; done



