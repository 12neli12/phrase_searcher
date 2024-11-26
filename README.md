# phrase_searcher
A shell code able to search for certain phrases in logs.
This is a script made in shell with the purpose of searching phrases in different logs. 
Tired of manually searching for certain things? Phrase searcher is here to make your life easier. (linux only)

# USAGE
1. First execute the main.sh script. (sh main.sh <absolute_path> <phrase>)
2. Make sure that the path is correct, if it isn't it will show an error. (either the directory doesn't exist or isn't in its absolute form).
3. This will call the slave.sh script which will do the recursion and search for files with that phrase through directories and subdirectories.
4. Then the absolute path of the file containing the phrase will be appended in a new txt file! 
