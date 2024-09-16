function create_output_file_paths(dir, filenames, extension)
{
	/* Create array of file paths, with extension. Based on a given filename list, a given path, a suffix, and a file extension.
	Returns a string Array of new file paths. */

	// create output file paths
	newFilePaths = Array.copy(outputs);
	for (i = 0; i < newFilePaths.length; i++)
	{
		newFilePaths[i] = dir + filenames[i] + extension;
	}
	
	return newFilePaths;
}
