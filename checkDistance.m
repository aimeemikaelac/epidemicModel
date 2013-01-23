%the function checks if two different nodes are within a certain range of
%each other, based on the input range threshold
function inRange = checkDistance(newNode, oldNode, rangeThreshold);
% newNode
% oldNode
x1=newNode(1,1);
y1=newNode(1,2);
x2=oldNode(1,1);
y2=oldNode(1,2);
distance=((x1-x2)^2+(y1-y2)^2)^(1/2);
% disp('distance is:')
% distance
% distance=pow(pow(x1-x2,2)+pow(y1-y2,2),1/2);
if(distance<=rangeThreshold)
    inRange=true;
else
    inRange=false;
end
% disp('result is:')
% inRange
return
end