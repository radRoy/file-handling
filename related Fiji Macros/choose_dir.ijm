macro "choose dir" {
	function choose_dir() {
		// Opens a dialog window to choose a folder and returns folder path that only contains slashes and has a trailing slash.
		dir = getDir("Choose directory");
		dir = replace(dir, "\\", "/");
		return dir;
	}
}
