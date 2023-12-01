# This is the fifth lab and final lab report of CSE15L FA23!

## Part 1 - Debugging Scenario

Note: Use the bug from lab week 8 and use jdb to locate the bug, take screenshots of infinite run time, then provide screenshots of debugging using jdb
1. Student post: 
Help, I've come across a bug and I don't know what to do! My code just keeps compiling and I can't figure out why my code wont execute! 
I'm attempting to debug the problem on my machine, but I don't know much about JDB since I missed last weeks lecture! HELP!

2. Hey! I've taken a good look at your issue and believe that I can guide you towards the solution, but first he's a question. If you run
JDB and add a stopping point somewhere in one of the loops, what do you think will happen? Add some print statements in your code and take
a step where you think the bug might be hiding to derive the precise location. Let me know if you get stuck again or drop by office hours and I'm
sure one of the wonderful TA's can be of assistance. Have a good one!

3. The fatal bug in this code was an infinite loop caused by the while condition never breaking since the indexing variable was incorrectly
assigned at the end of the loop. Incrementing a variable that has nothing to do with breaking the conditional statement.

4. 


## Part 2 - Reflection

I've personally learned a lot from this course thoughout the ten weeks that we've been here. I've never worked with Git before, I also haven't
really messed around with assembly and I haven't been exposed to vim until a few weeks ago. I must say that I really enjoyed learning
these three because I believe they're incredibly useful and I thoroughly enjoyed learning them. My absolute favorite thing I've learned this quarter
has to be vim. I believe that vim is an incredibly useful and powerful tool that makes editing files very simple compared to the dull editing from
opening the file itself. You're able to perform so many commands such as searching for word, jumping to a line of code, making a quick edit to
a file that might contain a bug, and how you can use it with text files or with java files. I also loved learning assembly and writing scripts because
it really allows you to appreciate java and other higher level languages. I also think learning Git was a crucial part in this course since 
it's an extremely practical tool since it's widely used throughout the industry and also used in CSE courses at UCSD.