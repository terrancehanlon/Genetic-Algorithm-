function result = mutateTest(num)
indexToMutate = rand(1)*length(num);
indexToMutate = round(indexToMutate);


if num(indexToMutate) == 0
    num(indexToMutate) = 1;
    
else
    num(indexToMutate) = 0;
end
result = num;


end