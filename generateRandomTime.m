%this function generates a random time that is between the input time t and
%the maximum time maxTime
function randomTime = generateRandomTime(t, maxTime)
    randomTime=t+(maxTime-t)*rand;
    return;
end