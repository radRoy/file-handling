function duplicate_array_elements(array, n_duplicates)
{
	duplicateArray = newArray(n_duplicates * array.length);
	for (i = 0; i < array.length; i++)
	{
		// zranges = newArray(zranges_unique[0], zranges_unique[0], zranges_unique[0], zranges_unique[0], zranges_unique[1], zranges_unique[1], zranges_unique[1], zranges_unique[1], zranges_unique[2], zranges_unique[2], zranges_unique[2], zranges_unique[2], zranges_unique[3], zranges_unique[3], zranges_unique[3], zranges_unique[3], zranges_unique[4], zranges_unique[4], zranges_unique[4], zranges_unique[4], zranges_unique[5], zranges_unique[5], zranges_unique[5], zranges_unique[5], zranges_unique[6], zranges_unique[6], zranges_unique[6], zranges_unique[6]);
		for (j = 0; j < n_duplicates; j++)
		{
			k = i*n_duplicates + j;
			duplicateArray[k] = array[i];
			print(array[i], "=", duplicateArray[k]);
		}
	}
	return duplicateArray;
}
