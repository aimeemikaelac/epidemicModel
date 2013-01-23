%generate a random number. if the number is above the set threshold, return
%true, else return false. will need to be calibrated based on the disease
%being modeled
function isInfected = probabilityInfected()
    r=rand;
    if(r>0.5)
        isInfected=true;
        return;
    end
    isInfected=false;
    return;
end