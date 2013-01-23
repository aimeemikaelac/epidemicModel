%this function loads a specific location for a node from the list of
%movements for that node
function curMovements = loadCurrentMovements(i,t)
    movementsArray=loadOldMovements(t);
    curMovements=movementsArray(i,:);
end
