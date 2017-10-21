%This mutuate function creates a new individual which is denoted as a
%The function gets passed an existing individual as a vector also denoted a.
%The size of the vector is also passed.
%This Function randomly selects the index to be mutated by using the
%Rand(1) function and multiplying it by the size and round it to get a
%number inside the bounds of the vector.
%Use if and else statement to determine the new index location and then
%changing its opposite value.
function newIndvi = mut(a, size)
indexToMutate = rand(1)*size;
indexToMutate = round(indexToMutate);


if a(indexToMutate) == 0
    a(indexToMutate) = 1;
    
else
    a(indexToMutate) = 0;
end
a

end

