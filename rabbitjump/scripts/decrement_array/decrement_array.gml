function decrement_array(anArray)
{
	var newArray = [];
	for (var i = 0; i < array_length(anArray); i += 1)
	{
		array_push(newArray,max(0,anArray[i] - 1));
	}
	return newArray;
}