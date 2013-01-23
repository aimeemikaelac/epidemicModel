%this function is responsible for running a single timestep of the SIR
%model. it will loop through each node, and check if any other node is
%infected or if any node can be infected by it, based on a range threshold.
%it will then have a certain probability of infecting or being infected,
%based on a probability distribution that will deiffer between diseases
%being modeled
function modelTimeStep(t, numberOfMovements, maxTime, rangeThreshold)
    %global nodeStatus
    %[currentMovements]=loadOldMovements(t);
    %delay();
    for firstNodeIndex = 1:numberOfMovements;%iterate through each node
        firstNode = loadCurrentMovements(firstNodeIndex, t);%load the current state of the nodes
        for secondNodeIndex = 1:numberOfMovements;%iterate through each set of nodes in current time step
            secondNode = loadCurrentMovements(secondNodeIndex,t);%load a new node from the old movements
            %for newNodeIndex = 1:length(newMovements);%iterate through each of the new movements
             %   newNode = newMovements(newNodeIndex);%get a new movement
                %check that it is not the same node as in the old movements
                if((firstNodeIndex~=secondNodeIndex)&&(isInfected(firstNodeIndex)||isInfected(secondNodeIndex)))
                    %check if the current node is in the infectable range of the next node
                    inInfectableRange = checkDistance(firstNode, secondNode, rangeThreshold);
                    %if was in the range of the node
                    if(inInfectableRange)
                        %determine the length of time of the infection if the node was infected
                        infected = probabilityFunction(firstNodeIndex, secondNodeIndex, t, maxTime);
                        
                        %if the node was infected, mark it as infected
                        %TODO: remove. marking of infected nodes occurs in
                        %probabilityFunction
                        if(infected)
                            markInfected(firstNodeIndex);
                            markInfected(secondNodeIndex);
                        end
                    end
                end
                %check if an infected node has become cured
                if(infectedTimeExpired(firstNodeIndex, t))
                    markCured(firstNodeIndex, t);
                end
                if(infectedTimeExpired(secondNodeIndex, t))
                    markCured(secondNodeIndex, t);
                end
            %end
        end
        %oldMovements = newMovements;
    end
end