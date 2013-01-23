%this function will display a scatter plot that indicates the position of
%each node in the simulation area, as well as their infection status. blue
%nodes are susceptible, red nodes are infected and green nodes are cured
function displayTimeStep(t)
    %create a reference to the global variable
    global nodeStatus
    currentMovements=loadOldMovements(t);
    %select figure window and clear previous plot
    figure(1)
    clf
    %create a string of the current timestep to put in the title
    str=sprintf('The current timestep is: %d', t);
    
    %loop though each node and plot on the figure
    for ii=1:length(currentMovements)
        currentNode=currentMovements(ii,:);
        color=[0 0 0];
        if(nodeStatus(ii,1)=='S')
            color=[0 0 1];
        else
            if(nodeStatus(ii,1)=='I')
                color=[1 0 0];
            else
                color=[0 1 0];
            end
        end
        scatter(currentNode(1), currentNode(2), 5, color);
        title(str)
        hold on
    end
end