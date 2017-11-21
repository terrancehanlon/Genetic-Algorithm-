function answer = GA()
%find value that makes 10 + x + y = 1050 (the answer should be 50)   

%sentinel value for advancing generations?
finishedVal = false;

%populationSize = 10;
%realPopulation = [];
%rangeOfCandidateSol = [];

%Create individuals
    individual1 = createIndiv(10000);
    individual2 = createIndiv(10000);
    individual3 = createIndiv(10000);
    
    
 %   for i = 1: populationSize
        
  %      realPopulation(i) = createIndiv(rangeOfCandidateSol);
        
   % end
    
    
    population = [individual1, individual2, individual3];
    
    %checks to see if any boolean value works right of bat
    for i = 1: length(population)
        if checkFitness(getFitnessCode(population(i))) == true  %is == true needed?
            finishedVal = true;
            disp(getFitnessCode(population(i))
            break;
        end
        
    end
    
  %Sets first element to min value to compare for to other values.... might
  %not be needed
   minValue = [fitnessIndiv1];
  
   %Checks fitness for each element and compares to fitness of first
   %If fitness in other element is lower, that becames minValue..This part
   %will be used to determine lowest fitness, and possibly a value to
   %mutate instead of crossover. 
   for i = 1: (length(population))
       if i == length(population)
        break; %to avoid index out of bounds because of i + 1
       elseif getFitnessCode(population(i)) > getFitnessCode(population(i+1))
           minValue = [getFitnessCode(population(i+1))]; 
       end
   end
 
   i = 1;
   %Removes lowest value from population
   %Leaving this part optional 
   checkDone = false;
   crossoverVector = [];
   while checkDone == false
       if minValue == getFitnessCode(population(i))
          population(i) = [];
            checkDone = true; 
       end
   i = 1 + i;
    
   end
   %fill vector to crossover 
   for i = 1: (length(population))
      crossoverVector(i) = population(i); 
   end
    %Get random individuals to crossover
    indivToCrossOver_1 = floor(rand(1) * length(population));
    indivToCrossOver_2 = floor(rand(1) * length(population));
    
    
    
end

function [gbest, hist, gbestfit] = GA2(img, object_geom_p, hist_p, colormap_p, patch_size, kernel)
  
end
        

    





function [indiv] = createIndiv(num)
%num = the possible candidate solutions,
%indiv = de2bi(newIndiv)

indiv = floor(rand(1)*num);
%indiv = de2bi(newIndiv);

end

function [indiv1, indiv2, indiv3, indiv4, indiv5] = createPopulaton(n)
sizeOfPopulation = n;

    indiv1 = createIndiv();
    indiv2 = createIndiv();
    indiv3 = createIndiv();
    indiv4 = createIndiv();
    indiv5 = createIndiv();

end

function [newChromosone, newChromosone2] = crossover(a,b)
sizeOfChromosone = 5;
indexToCrossGene1 = rand(1) * sizeOfChromosone;
indexToCrossGene2 = rand(1) * sizeOfChromosone;

%At randomly selected index of a, insert value of vector b at the randomly
%selected index of vector b.
a(indexToCrossGene1) = b(indexToCrossGene2);

%At randomly selected index of vector b, insert value of vector a at the
%randomly selected index of vector a.
b(indexToCrossGene2) = a(indexToCrossGene1);

newChromosone = a;
newChromosone2 = b;


end

function newIndiv = mut(num)
indexToMutate = rand(1)*length(num);
indexToMutate = round(indexToMutate);


if num(indexToMutate) == 0
    num(indexToMutate) = 1;
    
else
    num(indexToMutate) = 0;
end
newIndiv = num;

end
%practice function
function ifTrue = checkFitness(indiv)
%value = bi2de(indiv,8);
value = indiv;
if value == 50
   ifTrue = true; 
else
    ifTrue = false;
end

end

function fitnessLevel = getFitnessCode(indiv)

%value = bi2de(indiv,8);

fitnessLevel =[];

end

