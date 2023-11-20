# This is the third lab report for CSE15L of FA23!
## Information used for gathering commands and other information
[Geeks for Geeks](geeksforgeeks.org/greg-command-in-unixlinux/#)

*Practical Guide to Linux Commands 2nd Edition, Mark G. Sobell*

# Part 1 Bugs!

For this portion of the lab report, I'll be discussing the bug in ListExamples.java.

1. A failure-inducing input for the buggy program: 
In the last while loop, the condition to break is "while(index2 < list2.size())", so naturally we will want to 
increment by index2, but in the code initially, we're incrementing index1. Therefore, we're getting an infinite loop
since we can never escape the while loop. So, it turns out that any test we try and do will end up never completing.

2. An input that doesn't induce a failure: 
There is no test which I can implement without running into the infnite loop in the code, so there actually doesn't exist
an input that I can use to induce a failure since the code doesn't run properly. If I fix the code to work properly, then 
I could break it with the following: 
```
    List<Integer> input3 = new ArrayList<>();
    List<Integer> input4 = new ArrayList<>();
    input3.add(0); input4.add(2);
    input3.add(3); input4.add(5);
    List<Integer> expectedResult = new ArrayList<>(Arrays.asList(0,2,3,5));
    assertEquals(expectedResult, ListExamples.merge(input3, input4));
```
This will result in an error since the method parameters strictly ask for String, it's not generic.
Additionally, another potential case to consider would be null values.

3. An input that doesn't induce a failure:
The symptom was a infinite loop in the last while loop.
After fixing the while loop, we're able to test the implementation of the sorting method. I wrote the following
test creating two Lists of type String adding 5 Strings to the both of them. Next step was creating another 
List of type String which I believe to be the expected after doing by hand. Finally, write the assertEquals 
Junit test which comes out to be true.
```
  @Test
  public void testMerge() {
    List<String> input1 = new ArrayList<>();
    List<String> input2 = new ArrayList<>();
    input1.add("a"); input2.add("c");
    input1.add("f"); input2.add("b");
    input1.add("e"); input2.add("d");
    input1.add("s"); input2.add("u");
    input1.add("w"); input2.add("z");
    List<String> expected = new ArrayList<>(Arrays.asList("a","c","b","d","f","e","s","u","w","z"));
    List<String> mergeSort = ListExamples.merge(input1, input2);
    
    assertEquals(expected, mergeSort);
  }
```

4. The following block of code is the buggy implementation of the merge method:
```
  static List<String> merge(List<String> list1, List<String> list2) {
    List<String> result = new ArrayList<>();
    int index1 = 0, index2 = 0;
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
    while(index1 < list1.size()) {
      result.add(list1.get(index1));
      index1 += 1;
    }
    while(index2 < list2.size()) {
      result.add(list2.get(index2));
      index1 += 1;
    }
    return result;
  }
```

The following block of code is the implementation of the same method, but bug free.
```
  static List<String> merge(List<String> list1, List<String> list2) {
    List<String> result = new ArrayList<>();
    int index1 = 0, index2 = 0;
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
    while(index1 < list1.size()) {
      result.add(list1.get(index1));
      index1 += 1;
    }
    while(index2 < list2.size()) {
      result.add(list2.get(index2));
      index2 += 1;
    }
    return result;
  }
```
The fix to the last while loop fixes the issue because the code can never compile properly and so we're unable to
fully test the capability to see if the method even merges properly. 

# Part two - Researching Commands

For this portion of the lab, I'll choose to look at the grep command.

## #1 grep -f examples
The importance of fgrep is that it searches files for the literal argument input by the user. 
In addition, fgrep is very fast at finding the results.

The following code block is searching for the string "murder" in the all the textfiles contained within the subdirectories of technical/ and stores them inside another textfile. 
This is incredily useful because we're able to store the files and lines that contain the
desired string we're searching for. fgrep searching for literal or exact values.
![Alt text](<images/PA3 Images/fgrep-example1.png>)

Here is the output:
![Alt text](<images/PA3 Images/fgrep-example1-output.png>)

The following code block is searching for the string "homicide" in the all the textfiles contained within the subdirectories of technical/. As stated above, this is incredibly useful
and helps sorting and storing loads of information within textfiles that satisfies the argument
input by the user.
![Alt text](<images/PA3 Images/fgrep-example2.png>)

Here is the output:
![Alt text](<images/PA3 Images/fgrep-example2-output.png>)

## #2 grep -e examples
The importance of egrep and the main difference between other grep's in the command line
arsinal is that it searches for patterns rather than literals.

The following code block is searching for a pattern desired by the user, in this case im
searching for homicide or murder and inserting them into a new textfile to properly store the 
data. 
![Alt text](<images/PA3 Images/egrep-example1.png>)

Here is the output:
![Alt text](<images/PA3 Images/egrep-example1-output.png>)

The following code block is searching the pattern "anime or cartoons" and storing them into 
a textfile. For this argument I provided, I didn't really expect anything to pop up, so I was
sort of surprised. 
![Alt text](<images/PA3 Images/egrep-example2.png>)

Here is the output:
![Alt text](<images/PA3 Images/egrep-example2-output.png>)

## #3 grep -r examples
The importance of grep -r is that it recursively searches for the pattern desired by the user.

The following code block recursively searches for the pattern desired by the user. In this case,
I also added on wc -l which will count the number of lines in the output. I thought this result 
wasn't all too useful since you only have a number which doesn't really give you much information.
It's useful, but I believe there's a better approach.
![Alt text](<images/PA3 Images/rgrep-example1.png>)

Here is the output:
![Alt text](<images/PA3 Images/rgrep-example1-output.png>)

This is the last code block of me recursively searching again for the pattern "murder" and
I decided to use the head -5 command which will print the first 5 lines of each textfile 
containing the pattern input. So, as we can see, the output includes only five lines from
911report/chapter-2.txt file.
![Alt text](<images/PA3 Images/rgrep-example2.png>)

Here is the output:
![Alt text](<images/PA3 Images/rgrep-example2-output.png>)

## #4 grep -c examples
The importance of grep -c is that it counts how many times the argument was used within the 
set of textfiles input by the user, this is critical in determining the frequencies of words 
throughout all the textfiles contained in the subdirectories of technical/.

In this code block, I'm searching for the number of times the term gun is used throughout
all the textfiles located in the subdirectories of technical/.
![Alt text](<images/PA3 Images/cgrep-example1.png>)

Here is the output:
![Alt text](<images/PA3 Images/cgrep-example1-output.png>)

In this last code block I tried something entirely new, I basically did the same procedure as
I did in the previous code block. I counted the number of times the term murder came up, but I also
added the command grep -rl using the same argument. The r portion works analogously to grep -r, and
the l part lists all the names of the files that contain the argument.
![Alt text](<images/PA3 Images/cgrep-example2.png>)

Here are the two outputs:
![Alt text](<images/PA3 Images/cgrep-example2-output1.png>)
![Alt text](<images/PA3 Images/cgrep-example2-output2.png>)