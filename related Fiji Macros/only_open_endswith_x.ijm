/*
 * Daniel Walther
 * Creation Date: 14.11.2023 (dd.mm.yyyy)
 * purpose: opening every 10th single slice file of each specimen of dataset08.0 starting with slice 3, so that I do not have to click everything myself and potentially move, forget or delete some files or so.
 */

function getFilePaths(directory)
{
	
	/* Takes a path as a string and returns the absolute file paths as an array.
	 * directory (string) : the chosen directory containing some files. has a trailing slash (or backslash).
	 * return filePaths (string Array) : an array of strings of the file paths (with absolute path, filename, and extension).
	 */

	files = getFileList(directory);
	filePaths = Array.copy(files);
	for (i = 0; i < files.length; i++)
	{
		filePaths[i] = directory + files[i];
	}
	
	return filePaths;  // Array of filePaths (strings with absolute path, filename, and extension)
}

dirIn = getDir("Choose input directory");
filePaths = getFilePaths(dirIn);  // array of the file paths in the given directory, i.e., absolute path, file name, and extension

for (i = 0; i < filePaths.length; i++)
{
	if (endsWith(filePaths[i], "3.tif")) {
		print("i: " + i);
		print(" filePaths[i]: " + filePaths[i]);
		open(filePaths[i]);
	}
}
