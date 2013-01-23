%this function is resonsible for marking a node as cured in the status
%array, as well as recording the time that the node became cured
function markCured(index, t)
    global nodeStatus
    nodeStatus(index, 1)='R';
    nodeStatus(index, 4)=t;
    return;
end