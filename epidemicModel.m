%this function runs an epidemic model on the kaist data set.
%the function relies on the kaist data files existing in the subfolder
%"kaist-2012-11-12\kaist\KAIST"
function modelResults = epidemicModel(endTime)
    %length of shortest path for kaist is 506 movements
    
    %create global variables to store the movement data for each
    %kaist node
    movementsArrayList=java.util.ArrayList;
    global kaistImport13;
    kaistImport13=importdata('kaist-2012-11-12\kaist\KAIST_30sec_013.txt');
    movementsArrayList.add(kaistImport13);
    global kaistImport15
    kaistImport15=importdata('kaist-2012-11-12\kaist\KAIST_30sec_015.txt');
    movementsArrayList.add(kaistImport15);
    global kaistImport14
    kaistImport14=importdata('kaist-2012-11-12\kaist\KAIST_30sec_014.txt');
    movementsArrayList.add(kaistImport14);
    global kaistImport20
    kaistImport20=importdata('kaist-2012-11-12\kaist\KAIST_30sec_020.txt');
    movementsArrayList.add(kaistImport20);
    global kaistImport23
    kaistImport23=importdata('kaist-2012-11-12\kaist\KAIST_30sec_023.txt');
    movementsArrayList.add(kaistImport23);
    global kaistImport24
    kaistImport24=importdata('kaist-2012-11-12\kaist\KAIST_30sec_024.txt');
    movementsArrayList.add(kaistImport24);
    global kaistImport27
    kaistImport27=importdata('kaist-2012-11-12\kaist\KAIST_30sec_027.txt');
    movementsArrayList.add(kaistImport27);
    global kaistImport28
    kaistImport28=importdata('kaist-2012-11-12\kaist\KAIST_30sec_028.txt');
    movementsArrayList.add(kaistImport28);
    global kaistImport32
    kaistImport32=importdata('kaist-2012-11-12\kaist\KAIST_30sec_032.txt');
    movementsArrayList.add(kaistImport32);
    global kaistImport35
    kaistImport35=importdata('kaist-2012-11-12\kaist\KAIST_30sec_035.txt');
    movementsArrayList.add(kaistImport35);
    global kaistImport36
    kaistImport36=importdata('kaist-2012-11-12\kaist\KAIST_30sec_036.txt');
    movementsArrayList.add(kaistImport36);
    global kaistImport38
    kaistImport38=importdata('kaist-2012-11-12\kaist\KAIST_30sec_038.txt');
    movementsArrayList.add(kaistImport38);
    global kaistImport42
    kaistImport42=importdata('kaist-2012-11-12\kaist\KAIST_30sec_042.txt');
    movementsArrayList.add(kaistImport42);
    global kaistImport43
    kaistImport43=importdata('kaist-2012-11-12\kaist\KAIST_30sec_043.txt');
    movementsArrayList.add(kaistImport43);
    global kaistImport45
    kaistImport45=importdata('kaist-2012-11-12\kaist\KAIST_30sec_045.txt');
    movementsArrayList.add(kaistImport45);
    global kaistImport46
    kaistImport46=importdata('kaist-2012-11-12\kaist\KAIST_30sec_046.txt');
    movementsArrayList.add(kaistImport46);
    global kaistImport47
    kaistImport47=importdata('kaist-2012-11-12\kaist\KAIST_30sec_047.txt');
    movementsArrayList.add(kaistImport47);
    global kaistImport51
    kaistImport51=importdata('kaist-2012-11-12\kaist\KAIST_30sec_051.txt');
    movementsArrayList.add(kaistImport51);
    global kaistImport53
    kaistImport53=importdata('kaist-2012-11-12\kaist\KAIST_30sec_053.txt');
    movementsArrayList.add(kaistImport53);
    global kaistImport55
    kaistImport55=importdata('kaist-2012-11-12\kaist\KAIST_30sec_055.txt');
    movementsArrayList.add(kaistImport55);
    global kaistImport56
    kaistImport56=importdata('kaist-2012-11-12\kaist\KAIST_30sec_056.txt');
    movementsArrayList.add(kaistImport56);
    global kaistImport66
    kaistImport66=importdata('kaist-2012-11-12\kaist\KAIST_30sec_066.txt');
    movementsArrayList.add(kaistImport66);
    global kaistImport72
    kaistImport72=importdata('kaist-2012-11-12\kaist\KAIST_30sec_072.txt');
    movementsArrayList.add(kaistImport72);
    global kaistImport80
    kaistImport80=importdata('kaist-2012-11-12\kaist\KAIST_30sec_080.txt');
    movementsArrayList.add(kaistImport80);
	%movementsArray=[kaistImport13, kaistImport14, kaistImport15, kaistImport20, kaistImport23, kaistImport24, kaistImport27, kaistImport28, kaistImport32, kaistImport35, kaistImport36, kaistImport38, kaistImport42, kaistImport43, kaistImport45, kaistImport46, kaistImport47, kaistImport51, kaistImport53, kaistImport55, kaistImport56, kaistImport66, kaistImport72, kaistImport80];
    pause on
    %specific to kaist data
    global nodeStatus
    
    %create an array to hold the status of the nodes
    %nodeStatus(i,1) is the infection status of node i
    %nodeStatus(i,2) is the time that node i becomes cured
    %nodeStatus(i,3) is the initial infection time of node i
    %nodeStatus(i,4) is the time that node i became cured(redundant)
    nodeStatus=zeros(24,4);
    for i=1:24
        nodeStatus(i,1)='S';
    end
    %pick a node to be the initial infected node. can be changed or made
    %into a random distribution. must give the node an expiration time, or
    %will become cured after the first time-step
    nodeStatus(3,1)='I';
    nodeStatus(3,2)=generateRandomTime(0, 506);
    
    %go through all of the timesteps in the simulation
    for t=1:endTime
        %disp('the time is: ')
        %t
        %t=int32(t);
        %run a single timestep of the simulation
        modelTimeStep(t, 24, endTime, 100);
        %display the status of the nodes in a scatterplot. blue nodes are
        %susceptible, red nodes are infected and green nodes are cured
        displayTimeStep(t);
        %pause to allow the plot to display
        pause(.1);
    end
    pause off
    %print the final contents of noseStatus
    modelResults=nodeStatus;
    return
end