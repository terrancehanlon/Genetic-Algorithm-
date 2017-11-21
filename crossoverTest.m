function [newChromosone, newChromosone2]  = crossoverTest(a,b)

if length(a) < length(b)
   smallestLength = length(a);
else
    smallestLength = length(b);   
end

indexToCrossGene1 = floor(rand(1) * smallestLength);
indexToCrossGene2 = ceil(rand(1) * smallestLength);

%Possibly getting zero at index which was throwing exception, so if either
%index is zero, add 1 to it.
if indexToCrossGene1 == 0
    indexToCrossGene1 = indexToCrossGene1 + 1;
elseif indexToCrossGene2 == 0
    indexToCrossGene2 = indexToCrossGene2 + 1;
end

%At randomly selected index of a, insert value of vector b at the randomly
%selected index of vector b.
a(round(indexToCrossGene1)) = b(round(indexToCrossGene2));

%At randomly selected index of vector b, insert value of vector a at the
%randomly selected index of vector a.
b(indexToCrossGene2) = a(indexToCrossGene1);

disp(indexToCrossGene1)
disp(indexToCrossGene2)

newChromosone = a
newChromosone2 = b



end