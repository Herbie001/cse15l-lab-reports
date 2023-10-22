## This is the first lab report for CSE15L of FA23


| Command Used      | #Associated block | 
| :---------------  | ----------------: |
| pwd                                              | 1  | 
| ls                                               | 2  | 
| who                                              | 3  |    
| java Hello messages/zh-cn.txt                    | 4  |
| cd Documents/GitHub/lecture1 && cat README       | 5  |   
| java Hello messages/en-us.txt                    | 6  |
| ls Documents/GitHub/lecture1                     | 7  |
| ls erichebert/Documents/GitHub/lecture1/messages | 8  |
| ls Users/erichebert/Documents/GitHub             | 9  |

## Sharing examples of screenshots using a command without arguments

For this example, the current working directory for this example is Users/erichebert.
The reason I got the following output is because the command pwd prints the name of 
the current working directory. The output isn't an error since it's a command that
doesn't take any arguments and purpose is to provide information regarding the users
current working directory.

![pwd command](<images/PA1 Images/Screenshot 2023-10-21 at 10.58.10 PM.png>)

 
For this example, my current working directory was /Users/erichebert/Documents/GitHub/lecture1.
The reason I got the following output is because the command ls lists all the contents of files 
and directories within that directory. So, it makes sense that we would see the following files.
For this command, we didn't use any sort of arguments because it's not required here.
The following isn't an error since we're just trying to see what is contained in the current working
directory.

![ls command](<images/PA1 Images/Screenshot 2023-10-21 at 11.08.17 PM.png>)


For this example, my current working directory was /Users/erichebert/Documents/GitHub/lecture1.
The reason I got the following output is because the command who lists the information of 
the current user who is logged in printing their username, the tty and the date/time of login.
For this command, we didn't need to use any arguments since it's not required.
The following output isn't an error since we're just gathering information about the user.

![who command](<images/PA1 Images/Screenshot 2023-10-21 at 11.08.39 PM.png>)

## Sharing example of screenshots using commands with argument with a path to a file


For this example, my current working directory was /Users/erichebert/Documents/GitHub/lecture1.
The reason I got the following output is because I'm executing the java program using zh.-cn.txt
to print to the terminal. For this command, we absolutely must pass in additional arugments, otherwise
we will run into an error which will cause the program to fail since it requires the textfile.
The following output isn't an error since we're executing a program and getting the expected output.

![zh-cn.txt](<images/PA1 Images/Screenshot 2023-10-21 at 11.09.00 PM.png>)


For this example, my current working directory was /Users/erichebert/Documents/GitHub/lecture1.
The reason I got the following output is analogous to the example above. An argument is absolutely 
essential for executing the following java program, otherwise we would have recieved an error instead.
The following output isn't an error since we're executing a program and getting the expected output.

![en-us.txt](<images/PA1 Images/Screenshot 2023-10-21 at 11.17.16 PM.png>)


For this example, my current working directory was /Users/erichebert.
The reason I got the following output is because I'm changing the directory and also
using the cat with the README file as the argument. The reason why I get the following output
is because I'm changing the directory to the lecture1 directory and then using the cat command
to print out the contents contained inside the README.txt file.
The following output isn't an error since it's what I was expecting; however, if I inserted the incorrect
directory and tried to execute the cat command, I would've recieved an error message.

![cat README](<images/PA1 Images/Screenshot 2023-10-21 at 11.18.22 PM.png>)

## Sharing example of screenshots using commands with argument with a path to a directory.


For this example, my current working directory was /Users/erichebert.
The reason I got the following output is because I'm using the ls command and now I'm using a path
as an argument because I wanted to see what was contained in the directory of lecture1 from a different
working directory. 
The following wasn't an error since it's what I was expecting. However, an error would occur if I accidentally 
typed 'lecture2' instead, but this can be avoided by using the tab function on our keyboards to autofill.

![ls path to directory](<images/PA1 Images/Screenshot 2023-10-21 at 11.19.32 PM.png>)


For this example, my current working directory is /Users.
The reason I got the following output is because I'm using the ls command with a path to a directory
as an arugment which will list all of that files contents in the terminal.
The following wasn't an error since it's what I was expecting. 

![ls path to directory](<images/PA1 Images/Screenshot 2023-10-21 at 11.20.04 PM.png>)


For this example, my current workign directory is /.
The reason I got the following output is because I'm using the ls command with a path to a directory
to list the contents of that particular directory. The following output wasn't an error since it's what
I was expecting.

![ls path to directory](<images/PA1 Images/Screenshot 2023-10-21 at 11.20.48 PM.png>)
