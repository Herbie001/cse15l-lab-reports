# This is the fifth lab and final lab report of CSE15L FA23!

## Part 1 - Debugging Scenario

Note: Use the bug from lab week 8 and use jdb to locate the bug, take screenshots of infinite run time, then provide screenshots of debugging using jdb

# 1. Student post: 
Help, I've come across a bug and I don't know what to do! My code just keeps compiling and I can't figure out why my code wont execute! 
I'm attempting to debug the problem on my machine, but I don't know much about JDB since I missed last weeks lecture! HELP! I linked a screenshot
so you can see my code and hopefully can guide me in the correct direction.

Screenshot:

![Alt text](<images/PA5 Images/Screenshot 2023-12-03 at 9.59.58 AM.png>)

# 2. TA response to student post
Hey! I've taken a good look at your issue and believe that I can guide you towards the solution, but first he's a question. What do you think
will happen if you add some print statements around in your code and see if you notice any abnormal behavior in the output after running tests
using jdb. This could help deduce the location of the bug that is hiding in your code. 
Let me know if you get stuck again or drop by office hours and I'm sure one of the wonderful TA's can be of assistance. Have a good one!

# 3. Screenshots/Information following TA's advice
Here is a picture after inserting print statements around my code as recommended by the tutor.

![Alt text](<images/PA5 Images/Screenshot 2023-12-03 at 9.58.18 AM.png>)

Now here is output

![Alt text](<images/PA5 Images/Screenshot 2023-12-02 at 11.47.44 PM.png>)

From using the advise from the TA, I inserted print statements around areas of my 
code and was able to figure out where the bug was since the print statement
outputting "Stepping here" was printing over and over again until the test stopped. Now I'm able to deduce that my symptom was an infinite loop and the bug
was an incremental bug where I'm not incrementing the correct index to eventually
break out of the conditional statement. 


# 4. Information and details about the setup

* File & directory structure needed:

My working directory during this was */Users/erichebert/Documents/GitHub/lab7* 
The files used were ListExamples.java, ListExamplesTest.java, and I also used a bash
script instead of typing or copying the following each time in terminal when I wanted
to run jdb.

Here is the very simple but time efficient bash script: 
`jdb -classpath .:lib/hamcrest-core-1.3.jar:lib/junit-4.13.2.jar org.junit.runner.JUnitCore ListExamplesTests`

Also here is a screenshot showing my working directory and the files contained within:

![Alt text](<images/PA5 Images/Screenshot 2023-12-03 at 10.12.18 AM.png>)


* Contents of the file before fixing bug:

```

import java.util.ArrayList;
import java.util.List;

interface StringChecker { boolean checkString(String s); }

class ListExamples {

  // Returns a new list that has all the elements of the input list for which
  // the StringChecker returns true, and not the elements that return false, in
  // the same order they appeared in the input list;
  static List<String> filter(List<String> list, StringChecker checker) {
    List<String> result = new ArrayList<>();
    for(String s: list) {
      if(checker.checkString(s)) {
        result.add(s);
      }
    }
    return result;
  }


  // Takes two sorted list of strings (so "a" appears before "b" and so on),
  // and return a new list that has all the strings in both list in sorted order.
  static List<String> merge(List<String> list1, List<String> list2) {
    List<String> result = new ArrayList<>();
    int index1 = 0, index2 = 0;
    System.out.println("index1 is: " + index1 + " and index2: " + index2);
    while(index1 < list1.size() && index2 < list2.size()) {
	    if(list1.get(index1).compareTo(list2.get(index2)) < 0) {
        result.add(list1.get(index1));
        index1 += 1;
      }
      else {
        result.add(list2.get(index2));
        index2 += 1;
      }
    }
    System.out.println("Hello?");
    while(index1 < list1.size()) {
      result.add(list1.get(index1));
      index1 += 1;
      System.out.println("Stepping in first while loop");
    }
    System.out.println("Did I get out of first loop?");
    while(index2 < list2.size()) {
      System.out.println("Steping here");
      result.add(list2.get(index2));
      index1 += 1;
    }
    return result;
  }


}

```

* The full command line(or lines) used to trigger the bug:

I used a bash script I mentioned above simply because they save time and are incredibly 
useful, for procedures such as debugging. Here is a screenshot of me running my bash script to induce a bug. 

![Alt text](<images/PA5 Images/Screenshot 2023-12-03 at 10.15.38 AM.png>)

After typing `run` in the screenshot below, jdb will run and we
will see the output in the screenshot below.

* Description of what edit to fix the bug:
In order to fix the bug, we must edit the index so it should increment correctly.
On line 49, `index1 += 1;` should be changed to `index2 += 1;` which will resolve
the bug. We can do this either in the java file itself or using `vim ListExamples.java`.
If we choose the vim route, then we can traverse to the bottom of the page using the following key strokes:
1. `<shift> g`(Capital G) allows us to jump to the bottom of the page.

2. `/index1 <enter>` searches for the index to fix in the forward directions, which is why we use number 4 to traverse in reverse.

3. `<shift> n`(Capital N) repeats the search, but in the opposite direction - starting from the bottom and working our way to the top results.

4. `e` jumps to the end of a word.

5. `r[2] <escape>` replaces the 1 at the end of the word with 2.

6. `:wq <enter>` will save and exit.

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