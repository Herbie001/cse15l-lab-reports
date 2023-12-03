# This is the fifth lab and final lab report of CSE15L FA23!

## Part 1 - Debugging Scenario

Note: Use the bug from lab week 8 and use jdb to locate the bug, take screenshots of infinite run time, then provide screenshots of debugging using jdb
1. Student post: 
Help, I've come across a bug and I don't know what to do! My code just keeps compiling and I can't figure out why my code wont execute! 
I'm attempting to debug the problem on my machine, but I don't know much about JDB since I missed last weeks lecture! HELP! I linked a screenshot
so you can see my code and hopefully can guide me in the correct direction.

Screenshot:
![Alt text](<images/PA5 Images/Screenshot 2023-12-02 at 11.35.38 PM.png>)

2. Hey! I've taken a good look at your issue and believe that I can guide you towards the solution, but first he's a question. What do you think
will happen if you add some print statements around in your code and see if you notice any abnormal behavior in the output after running tests
using jdb. This could help deduce the location of the bug that is hiding in your code. 
Let me know if you get stuck again or drop by office hours and I'm sure one of the wonderful TA's can be of assistance. Have a good one!

3. Here is a picture after inserting print statements around my code as recommended by the tutor.

![Alt text](<images/PA5 Images/Screenshot 2023-12-02 at 11.47.28 PM.png>)

Now here is output

![Alt text](<images/PA5 Images/Screenshot 2023-12-02 at 11.47.44 PM.png>)

From using the advise from the TA, I inserted print statements around areas of my 
code and was able to figure out where the bug was since the print statement
outputting "Stepping here" was printing over and over again until the test stopped. Now I'm able to deduce that my symptom was an infinite loop and the bug
was an incremental bug where I'm not incrementing the correct index to eventually
break out of the conditional statement. 


4. Here is some details about the setup

* File & directory structure needed:


* Contents of each file before fixing bug:


* The full command line(or lines) used to trigger the bug:


* Description of what edit to fix the bug:
In order to fix the bug, we must edit the index so it should increment correctly.
On line 49, `index1 += 1;` should be changed to `index2 += 1;` which will resolve
the bug. 

Here is a screenshot of running the same tests again with zero failures after
addressing the bug and fixing it.

![Alt text](<images/PA5 Images/Screenshot 2023-12-03 at 12.11.24 AM.png>)


## Part 2 - Reflection

I've personally learned a lot from this course thoughout the ten weeks that we've been here. I've never worked with Git before, I also haven't
really messed around with assembly and I haven't been exposed to vim until a few weeks ago. I must say that I really enjoyed learning
these three because I believe they're incredibly useful and I thoroughly enjoyed learning them. My absolute favorite thing I've learned this quarter
has to be vim. I believe that vim is an incredibly useful and powerful tool that makes editing files very simple compared to the dull editing from
opening the file itself. You're able to perform so many commands such as searching for word, jumping to a line of code, making a quick edit to
a file that might contain a bug, and how you can use it with text files or with java files. I also loved learning assembly and writing scripts because
it really allows you to appreciate java and other higher level languages. I also think learning Git was a crucial part in this course since 
it's an extremely practical tool since it's widely used throughout the industry and also used in CSE courses at UCSD.