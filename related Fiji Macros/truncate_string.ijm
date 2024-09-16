macro "truncate_string" {
	function truncateString(s, n)
	{
		/* truncates a given string s by n characters (if n is 1, the last character is removed). assumes input arguments are valid & does no checking. */
		s = substring(s, 0, lengthOf(s) - n);
		return s;
	}
}