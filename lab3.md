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
technical/911report/chapter-2.txt:                
declared war against God and his messenger, they called for the murder of any
technical/911report/chapter-2.txt:                
even unprovoked mass murder as righteous defense of an embattled faith. Many
technical/911report/chapter-2.txt:                
as unbelievers," because of their readiness to demonize and murder those with whom
technical/911report/chapter-2.txt:                
like most other human beings, are repelled by mass murder and barbarism whatever
technical/911report/chapter-2.txt:                
Jersey City, he distributed messages calling for the murder of unbelievers.
technical/911report/chapter-3.txt:                
tracking down Mir Amal Kansi, the Pakistani gunman who had murdered two CIA
technical/911report/chapter-7.txt:                
suspect criminal behavior, let alone a terrorist plot to commit mass murder.
technical/plos/journal.pbio.0020101.txt:        
hard getting used to multiple murders per day in any large city. No, I mean sitcoms,
technical/plos/pmed.0020060.txt:        
x-ray of the mummy suggests a murder plot: King Tut may have been done in by a blow to the
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


In the following, I'm searching for the patterns "anime" and "cartoon".

```
$ grep -e "anime" -e "cartoons" */*.txt > sample-text.txt
```

Here is the output:

```
biomed/cc4.txt:          
artery pressure was measured by planimetry as the mean of
biomed/gb-2001-2-4-research0012.txt:          
cartoons) or by appearance (for example, double-weight
biomed/gb-2001-2-4-research0012.txt:          
cartoons and fully quantitative mathematical models.
plos/journal.pbio.0030136.txt:        
The iconic is by now commonplace—the idea that cartoons capture the 
essence of an image
```


## #3 grep -r examples

The importance of grep -r is that it recursively searches for the pattern desired by the user. In the cases below, I'm simply searching for a particular keyword which is recursively searched for. This is useful because it searches through a wide range of directories and subdirectories.

Here is the first input: 

```
$ grep -r "anime" */*.txt
```

Here is the first output:

```
biomed/cc4.txt:          
artery pressure was measured by planimetry as the mean of
```

Here is the second input: 

```
$ grep -r "Japanese" *.txt
```

Here is the second output: 

```
1471-2156-2-12.txt:            correlates with increasing age in the human Japanese
1471-2156-2-7.txt:        reported in Pima Indian and Japanese populations [ 9,
1471-2156-2-7.txt:        were negative in UK, Finnish, and Welsh [ 21] and Japanese
1471-2164-3-30.txt:        but not in the Japanese population [ 39 ] . Genetic
1471-2164-4-24.txt:          We identified eight TMC loci in the Japanese
1471-2350-2-2.txt:        the reported frequencies in a Japanese (56% for the F
1471-2350-3-7.txt:        Japanese; however, both samples were small and it is
1471-2350-3-7.txt:        overlap with the regions detected in a sample of Japanese
1471-2369-4-1.txt:        in a Japanese study. [ 30 ] Other investigators have
1471-2407-2-3.txt:          we used the five major groups in Hawaii (Japanese,
1471-2407-2-8.txt:        risk for the development of GC. Recent studies on Japanese
1471-2407-3-5.txt:        a higher death rate than do the Japanese. [ 5 ] These
1471-2407-3-5.txt:        ethnic groups (Caucasian, Japanese, Hawaiian, Filipino, and
1471-2407-3-5.txt:        Japanese patients had a nearly one-third higher survival
1471-2407-3-5.txt:        described better survival rates among Japanese and
1471-2407-3-5.txt:          were Caucasian, 20.4% Japanese, 18.8% Native Hawaiian,
1471-2407-3-5.txt:          from the five major ethnic groups (Caucasian, Japanese,
1471-2407-3-5.txt:        for Japanese, 79.4% for Caucasian, 78.8% for Chinese, 76.4%
1471-2407-3-5.txt:        indicated that Japanese and Caucasian patients had
1471-2407-3-5.txt:        intervals indicated that the Japanese always had a
1471-2458-2-6.txt:          healthy Japanese soldiers who took prophylactic
1472-6874-2-13.txt:          were Caucasian; 6 were Chinese; 5 were Japanese; 5 were
1475-925X-2-11.txt:        frequency range is used by Japanese mobile phones. Further
1476-511X-2-3.txt:        . Moreover, among 3000 adult Japanese men frequency of
bcr285.txt:          Caucasian, Chinese, Japanese, and Native Hawaiian
bcr285.txt:          1). Counting all soy foods, Chinese and Japanese women
bcr285.txt:          the Chinese and Japanese women after we stratified by
bcr285.txt:          of percent densities among Chinese and Japanese women who
bcr285.txt:          however, may be a marker for Chinese and Japanese
bcr285.txt:        Hawaiian women, 82 for Japanese women, and 55 for Chinese
bcr285.txt:        Japanese, and Native Hawaiian ancestry living in
bcr285.txt:          among Caucasian, Native Hawaiian, and Japanese women [
bcr285.txt:          Japanese women. Because the FFQ included only two soy
bcr285.txt:          cancer risk is low for Japanese and Chinese women and
bcr285.txt:          Japanese women represented the largest groups in this
bcr285.txt:          among Chinese and Japanese women. Mean soy food intake
bcr285.txt:          as in Chinese women. Chinese and Japanese women reported
bcr285.txt:          and Native Hawaiian women than among Chinese and Japanese
bcr285.txt:          significant trends in the Chinese and Japanese women
bcr285.txt:        percent densities among Chinese and Japanese women who are
bcr285.txt:        Japanese ethnicity; an indicator for childhood nutritional
gb-2003-4-3-r17.txt:          Hospital, Boston, MA) and a 41-year-old Japanese male
```

## #4 grep -c examples
The importance of grep -c is that it counts how many times the argument was used within the 
set of textfiles input by the user, this is critical in determining the frequencies of words 
throughout all the textfiles contained in the subdirectories of technical/.

In the code blocks below, I'm searching inside the 911report directory. In the first example I'm looking to see how many times anime is mentioned and in the second example I'm looking to see how many times gun is mentioned. 
I believe this is very important because it gives you the ability to create a distribution of how frequent a particular word is used across the range of files.

Here is the first input:

```
$ grep -c anime *.txt
```

Here is the first output:

```
chapter-1.txt:0
chapter-10.txt:0
chapter-11.txt:0
chapter-12.txt:0
chapter-13.1.txt:0
chapter-13.2.txt:0
chapter-13.3.txt:0
chapter-13.4.txt:0
chapter-13.5.txt:0
chapter-2.txt:0
chapter-3.txt:0
chapter-5.txt:0
chapter-6.txt:0
chapter-7.txt:0
chapter-8.txt:0
chapter-9.txt:0
preface.txt:0
```

Second input:

```
grep -c gun *.txt 
```

Second output:

```
chapter-1.txt:6
chapter-10.txt:3
chapter-11.txt:0
chapter-12.txt:3
chapter-13.1.txt:0
chapter-13.2.txt:7
chapter-13.3.txt:2
chapter-13.4.txt:10
chapter-13.5.txt:3
chapter-2.txt:3
chapter-3.txt:4
chapter-5.txt:0
chapter-6.txt:4
chapter-7.txt:2
chapter-8.txt:3
chapter-9.txt:3
preface.txt:0
```
