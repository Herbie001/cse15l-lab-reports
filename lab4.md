#This is the fourth lab report for CSE 15L FA2023

## Repeating the lab tasks:
1. Logging into ieng6 server: 

Summary of task: Assuming vscode is already open: press control+shift+`(back tick) to open a new terminal. Now log onto ieng6 server. with ssh cse15lfa23zz@ieng6.ucsd.edu. Remember that the xx is replaced by your own specific bigram. There is no other steps to take since we've already established the SSH key generation from week 3.

Keystrokes: control+shift+`(backtick), ssh<space>cse15lfa23zz@ieng6.ucsd.edu<enter>

Pictures:
![Alt text](<images/PA4 Images/logging into ieng6.png>)

2. Cloning the fork of the repository from GitHub account.

Summary of task: Assuming that the repository is already forked onto your GitHub account. Type the following into your terminal 
```
$ git clone git@github.com:(YOURUSERNAME)/lab7.git
```
This will successfully clone the forked repository to your machine.

Keystrokes: git<space>clone<space>git@github.com:(YOURUSERNAME)/lab7.git<enter>

Pictures:
![Alt text](<images/PA4 Images/git clone repo.png>)

3. Run the tests, demonstrating that they fail.

Summary of task: Open the directory you just cloned onto your machine, open terminal, if it's not already open and run the script test.sh using the following code below.
```
$ bash test.sh 
```
This command will run a script which will test your program to determine if there's any errors. After running the script, you will notice that you have run 4 tests, 3 passed and 1 failed.

Keystrokes: bash<space>test.sh<enter>

Pictures: 
![Alt text](<images/PA4 Images/running bash script.png>)

4. Edit the code in the file ListExamples.java and fix bug. 

Summary of task: Open the java file ListExamples.java using vim. To do this, click on your console then type in the following command.
```
vim ListExamples.java
```
Using vim allows us to quickly edit our java program, save and re-test it.

Keystrokes: <shift>+g, /index1, <shift>+n, e, r2, :wq<enter>

Explaination of keystrokes: 
<shift>+g allows us to jump to the bottom of the page.
/index1 searches for the index to fix.
<shift>+n repeats the search, but in the opposite direction - starting from the bottom and working our way to the top results.
e jumps to the end of a word.
r[2] replaces the 1 at the end of the word with 2.
:wq<enter> will save and exit.

Pictures:
![Alt text](<images/PA4 Images/edit java file using vim.png>)

5. Re-run the tests.

Summary of task: You want to click in your console, the re-run the same bash command using the same command. Which should give you 4 successful tests.
```
$ bash test.sh
```

Pictures:
![Alt text](<images/PA4 Images/running bash script again.png>)

6. Commit and push the changes to your GitHub account.

Summary of task: click on your terminal, then type the following code which will commit and push the changes you made to the java files.
```
git commit
```
```
git push
```
Keystrokes: git<space>commit, git<space>push

Pictures: 
![Alt text](<images/PA4 Images/git commit.png>)
![Alt text](<images/PA4 Images/git push.png>)