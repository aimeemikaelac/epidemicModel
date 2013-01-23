%this function checks if a particular node is infected
function infected = isInfected(index)
    %create reference to global variable
    global nodeStatus
    %check if the node is marked as infected in the status array
    if(nodeStatus(index, 1)=='I')
        infected=true;
        return;
    end
    infected=false;
    return;
end