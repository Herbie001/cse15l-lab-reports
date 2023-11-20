# This is the third lab report for CSE15L of FA23!
## Information used for gathering commands and other information
[Geeks for Geeks](geeksforgeeks.org/greg-command-in-unixlinux/#)

*Practical Guide to Linux Commands 2nd Edition, Mark G. Sobell*

# Part 1 Bugs!

For this portion of the lab report, I'll be discussing the bug in ListExamples.java.

1. A failure-inducing input for the buggy program: 
A failure inducing input we can try is having an arrayList with values A through C and then having the other arrayList consist of X through Z then attempting to merge them together.

```
  @Test
  public void testMerge() {
    List<String> input1 = new ArrayList<>();
    List<String> input2 = new ArrayList<>();
    input1.add("a"); input2.add("b");

    List<String> expected = new ArrayList<>(Arrays.asList("a","b"));
    List<String> mergeSort = ListExamples.merge(input1, input2);
    
    assertEquals(expected, mergeSort);
  }
```

2. An input that doesn't induce a failure: 
If you have an arrayList consisting of one value from the alphabeta and an arrayList consisting of no values and merge them, then you just get the array consisting of the one value, which works.

```
  @Test
  public void testMerge() {
    List<String> input1 = new ArrayList<>();
    List<String> input2 = new ArrayList<>();
    input1.add("a"); 

    List<String> expected = new ArrayList<>(Arrays.asList("a"));
    List<String> mergeSort = ListExamples.merge(input1, input2);
    
    assertEquals(expected, mergeSort);
  }
```

3. The symptom:
The symptom was a infinite loop in the last while loop.

Here are two screenshots demonstrating part 1 & 2 testing:

Picture 1 shows that there's clearly an infinite loop since the test is still going.
![Alt text](<Screenshot 2023-11-19 at 7.14.59 PM-1.png>)

Picture 2 shows that we've passed the test by merging two arraylists, one being empty and the other consisting of one element.
![Alt text](<Screenshot 2023-11-19 at 7.14.17 PM.png>)


4. The bug, before, after and the code change required to fix it.
The required change to address the infinite loop lies within the indexing of
the third while loop. Our conditional statement is broken when index2 is strictly
less than list2.size(), but at the end of loop, we're incrementing index1. So, we 
will never break out of the loop.

Here is the code before fixing: 
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

Here is the code after addressing the bug causing the infinite loop.

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

# Part two - Researching Commands

For this portion of the lab, I'll choose to look at the grep command.

## #1 grep -f examples
The importance of grep -f is that it will search for patterns in the directory specified by the user. In this example I used a text file called "pattern.txt" which contained the key word "murder". 

The following code block is using the textfile pattern.txt which only contains "murder", so it will search in the all the textfiles contained within the subdirectories of technical/ and stores them inside another textfile called sample-text.txt.
This is incredily useful because we're able to search with multiple keywords and store the files and lines that contain the patterns into a new text file.

input:
```
$ grep -f pattern.txt technical/*/*.txt > sample-text.txt
```
output:
```
technical/911report/chapter-2.txt:                declared war against God and his messenger, they called for the murder of any
technical/911report/chapter-2.txt:                even unprovoked mass murder as righteous defense of an embattled faith. Many
technical/911report/chapter-2.txt:                as unbelievers," because of their readiness to demonize and murder those with whom
technical/911report/chapter-2.txt:                like most other human beings, are repelled by mass murder and barbarism whatever
technical/911report/chapter-2.txt:                Jersey City, he distributed messages calling for the murder of unbelievers.
technical/911report/chapter-3.txt:                tracking down Mir Amal Kansi, the Pakistani gunman who had murdered two CIA
technical/911report/chapter-7.txt:                suspect criminal behavior, let alone a terrorist plot to commit mass murder.
technical/plos/journal.pbio.0020101.txt:        hard getting used to multiple murders per day in any large city. No, I mean sitcoms,
technical/plos/pmed.0020060.txt:        x-ray of the mummy suggests a murder plot: King Tut may have been done in by a blow to the
```

The following code block is searching for the string "homicide" in the all the textfiles contained within the subdirectories of technical/. As stated above, this is incredibly useful and helps sorting and storing loads of information within textfiles that satisfies the argument input by the user.

```
$ grep -f pattern.txt technical/*/*.txt > sample-text.txt
```

Here is the output:

```
technical/biomed/1472-6750-1-6.txt:          iii. Expect value: 1000 to 20000
```

## #2 grep -e examples
The importance of grep -e is that it's able to search for multiple patterns to produce the desired search results for the user. This is an efficient way to searching for multiple keywords.

In the following code block, my working directory is in technical/biomedical, so 
I'm directly searching for "proteins" and "cells" in the text file 1471-213X-1-2.txt. The -i is for case insensitive keywords. 
```
$ grep -i -e "proteins" -e "cells" 1471-213X-1-2.txt 
```

Here is the output:
```
We currently believe that migrating cells extend and
cells (or cell processes) can follow adhesive guidance
signals that cause cells to initiate movement, how cells
signals that stop cells at their appropriate positions.
fusion proteins or by Nomarski microscopy. Both the cell
subset of cells. Not surprisingly, many of these mutants
extracellular proteins, cell surface receptors, fibroblast
growth factor-like proteins and their receptors, adhesion
unc -40, guide cells and processes
species, the difference in how UNC-5 and UNC-40 guide cells
The guidance of cells and axons along the
therefore, signal to cells their direction and extent of
MEC-3 and UNC-86 proteins form a heterodimer that binds to
division or the positions of the BDU cells. We conclude,
mec-3gfp in the ten cells where 
then divides. One of the resulting cells, QR.pp,
cells. This ALM/BDU cell might migrate anteriorly, like a
neurons. These cells, being deprived of their own axon
migration factor may interact with other proteins that bind
D-STAT [ 27]. There are two proteins with homology to the
cells failed to correctly interpret anterior-posterior
defects (Fig. 9). In cells grown at lower temperatures, the
ALMR/BDUR and ALML/BDUL, respectively. When these cells
```

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