%this function is responsible for checking if two nodes are able to
%infect one another. the precondition is that the two nodes are within the
%infectable range of each other. if one node is infected and the other is
%susceptible, a probability check will be run to determine if an infection
%occurs. if an infection occurs, the function returns true, else the
%function returns false.
function infected = probabilityFunction(indexOne, indexTwo, t, maxTime)
    global nodeStatus
    oneSusceptible=false;
    twoSusceptible=false;
    oneInfected=false;
    twoInfected=false;
    %check if each node is infected or susceptible
    if(nodeStatus(indexOne,1)=='S')
        oneSusceptible=true;
    end
    if(nodeStatus(indexTwo,1)=='S')
        twoSusceptible=true;
    end
    if(nodeStatus(indexOne,1)=='I')
        oneInfected=true;
    end
    if(nodeStatus(indexTwo,1)=='I')
        twoInfected=true;
    end
    %if the first node is susceptible, and the second is infected, and the
    %probability check is passed
    if(oneSusceptible&&twoInfected&&probabilityInfected())
        nodeStatus(indexOne,1)='I';
        nodeStatus(indexOne,2)=generateRandomTime(t, maxTime);
        nodeStatus(indexOne,3)=t;
        infected=true;
        return;
    end
    %if the second node is susceptible and the first node is infected, and the
    %probability check is passed
    if(twoSusceptible&&oneInfected&&probabilityInfected())
        nodeStatus(indexTwo,1)='I';
        nodeStatus(indexTwo,2)=generateRandomTime(t, maxTime);
        nodeStatus(indexTwo,3)=t;
        infected=true;
        return;
    end
    infected=false;
    return;
end