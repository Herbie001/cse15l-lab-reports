#This is the fourth lab report for CSE 15L FA2023


## Logging into ieng6 server: 

Summary of task: Assuming vscode is already open: press `control+shift+(back tick)` to open a new terminal. Now log onto ieng6 server. with `ssh cse15lfa23zz@ieng6.ucsd.edu`. There is no other steps to take since we've already established the SSH key generation from week 3.

Keystrokes: `control+shift+(backtick)`, `ssh <space> cse15lfa23pp@ieng6.ucsd.edu`, `<enter>`

Pictures:

![Alt text](<images/PA4 Images/logging into ieng6.png>)

## Cloning the fork of the repository from GitHub account.

Summary of task: Assuming that the repository is already forked onto your GitHub account. Type the following into your terminal 

```
$ git clone git@github.com:Herbie001/lab7.git
```

This will successfully clone the forked repository to your machine.

Keystrokes: `git <space> clone <space> git@github.com:(Herbie001)/lab7.git <enter>`

Pictures:

![Alt text](<images/PA4 Images/git clone repo.png>)

## Run the tests, demonstrating that they fail.

Summary of task: Type `pwd` to figure out what your current working directory is. Then type `ls` and you will notice the newest file which 
is the repo that was cloned. Type `cd lab7/` to change the directory to the directory you just cloned, open terminal, if it's not 
already open and run the script called test.sh using the following code below.

```
$ bash test.sh 
```

This command will run a script which will test your program to determine if there's any errors. After running the script, you will notice that you have run 2 tests, 1 passed and 1 failed.

Keystrokes: `pwd`, `ls`, `cd lab7/`, `bash <space> test.sh <enter>`.

Pictures: 

![Alt text](<images/PA4 Images/running bash script.png>)

## Edit the code in the file ListExamples.java and fix bug. 

Summary of task: Open the java file ListExamples.java using vim. To do this, click on your console then type in the following command.

```
vim ListExamples.java
```

Using vim allows us to quickly edit our java program, save and re-test it.

Keystrokes: `<shift> g`(Capital G), `/index1 <enter>`, `<shift> n`(Capital N), `e`, `r2`, `:wq <enter>`

Explaination of keystrokes: 

1. `<shift> g` allows us to jump to the bottom of the page.

2. /index1 searches for the index to fix.

3. <shift> n repeats the search, but in the opposite direction - starting from the bottom and working our way to the top results.

4. e jumps to the end of a word.

5. r[2] replaces the 1 at the end of the word with 2.

6. :wq <enter> will save and exit.


Pictures:

![Alt text](<images/PA4 Images/edit java file using vim.png>)


## Re-run the tests.

<br>

Summary of task: You want to click in your console, the re-run the same bash command using the same command. Which should give you 2 successful tests.



```
$ bash test.sh
```


<br>


Pictures:


![Alt text](<images/PA4 Images/running bash script again.png>)

<br>


## Commit and push the changes to your GitHub account.


Summary of task: Click on your terminal, then type the following code which will add the changes, commit and push the changes you made to the java files to the main branch of the repository that your cloned.

```
git add ListExamples.java
```

```
git commit -m "Fixed the bug"
```

```
git push
```

Keystrokes: `git <space> add <space> ListExamples.java <enter> `, 
`git <space> commit <space> -m <space> "Fixed the bug" <enter>`, 
`git <space> push <enter>`


Pictures: 

![Alt text](<images/PA4 Images/Screenshot 2023-12-01 at 12.18.50 AM.png>)

![Alt text](<images/PA4 Images/Screenshot 2023-12-01 at 12.06.54 AM.png>)

![Alt text](<images/PA4 Images/Screenshot 2023-12-01 at 12.06.31 AM.png>)