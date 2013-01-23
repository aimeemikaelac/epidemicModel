%this function is responsible for marking a node as infected in the status
%array
function markInfected(index1)
    global nodeStatus
    nodeStatus(index1,1)='I';
    return;
end