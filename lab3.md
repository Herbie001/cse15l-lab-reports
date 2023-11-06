# This is the third lab report for CSE15L of FA23!

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

## fgrep examples

1. The following code block is searching 
![Alt text](<images/PA3 Images/fgrep-example1.png>)
2. 

## egrep examples
3. 

4. 

## regrep examples (grep -r) to be more precise.
5. 

6. 

## grep -c examples
7. 

8. 