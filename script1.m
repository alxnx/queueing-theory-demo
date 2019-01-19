lambda = 0.5;  
mu = 1.0;  
 
targettime = 50;  
 
nextarrival = (-1/lambda)*log(rand);  
now = 0;  nextdeparture = inf; % infinity  currentlength = 0;  
currentlength = 0; 

while now < targettime 
 
if nextarrival < nextdeparture 
    now= nextarrival;  
    currentlength = currentlength + 1;  
    fprintf('Arrival at : %f (current length %d)\n', now, currentlength);  
    nextarrival= now + (-1/lambda)*log(rand);  
    
    if currentlength == 1  
        nextdeparture= now + (-1/mu)*log(rand);  
    end
else
    now= nextdeparture;  
    currentlength= currentlength - 1;  
    fprintf('Departure at : %f (current length %d)\n', now,  currentlength);  
    if currentlength > 0  
        nextdeparture= now + (-1/mu)*log(rand);  
    else
        nextdeparture= inf;  
    end
end
 
end