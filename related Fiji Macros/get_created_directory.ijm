function get_created_directory(dirIn, suffix)
{
	/* Creates a directory with the same name as the given directory but with a suffix appended to it, and returns the path of it.
	 * dirIn (string) : The input directory containing input files to be processed. has a trailing slash (or backslash).
	 * suffix (string) : The suffix to be appended to the given folder name
	 * return dirOut (string) : The output (or just the created) directory as a string.
	 */

	// create string of the directory to be created
	dirOut = replace(dirIn, "\\", "/");
	dirOut = truncateString(dirOut, 1);  // truncate the folder path by the trailing slash
	dirOut = dirOut + suffix + "/";  // extend the input folder by the suffix

	// create the directory
	File.makeDirectory(dirOut);
	
	// return the string of the created directory
	return dirOut;
}
