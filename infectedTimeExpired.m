%this function checks if an infected node has reached the end of its time
%as being infected, and such, should then be tasked to be marked as cured
function isExpired = infectedTimeExpired(index, t)
    %create reference to global variable
    global nodeStatus
    %check if the node is infected, and then check if the node has reached
    %the end of its infected time
    if((nodeStatus(index,1)=='I')&&(nodeStatus(index, 2)<=t))
        isExpired=true;
        return;
    end
    isExpired=false;
    return;
end