# Honeywell-TDC-ReDiscover

This code is a Windows batch script that allows a user to delete a specific TDC point from an Experion server. Here's a breakdown of what the code does:

The first line "@echo off" prevents the command prompt from displaying the commands as they are executed.

The "setlocal EnableDelayedExpansion" command enables the use of delayed variable expansion.

Several lines of text are displayed to the user to provide a warning message indicating that this program should be run on the primary server and to prompt the user to enter the TDC point to rediscover and the server name.

The "set /p" commands prompt the user to enter the TDC point to rediscover and the server name.

The "temp_dir" variable is set to the path of the temp directory on the C:\ drive.

The "txt_file_path" variable is set to the path of the file that will be created to store the command to delete the specified point.

The script creates a new file at the path specified by "txt_file_path" and writes a command to delete the specified point to the file.

The script prompts the user to confirm whether they want to run the rediscover tool and stores the user's response in the "proceed" variable.

If the user enters "y", the script runs the "pntbld" command with the appropriate arguments to delete the specified point.

If the user enters any other value, the script displays a message indicating that the program has been terminated and exits.

Finally, the script waits for the user to press a key before exiting.

Overall, this code is designed to allow a user to delete a specific TDC point from an Experion server by creating a file that contains the command to delete the point and then executing that command using the "pntbld" tool. The user must confirm that they want to run the tool before it is executed.
