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

1. 
```
{
  erichebert@Erics-MacBook-Pro lecture1 % pwd
}
```
```
{
    /Users/erichebert/Documents/GitHub/lecture1
}
```
2. 
```
{
    erichebert@Erics-MacBook-Pro lecture1 % ls
}
```
```
{
    Hello.java      README          messages
}
```
3. 
```
{
    erichebert@Erics-MacBook-Pro messages % who
}
```
```
{
    erichebert       console      Sep 13 12:35 
}
```
4. 
```
{
    erichebert@Erics-MacBook-Pro lecture1 % 
    java Hello messages/zh-cn.txt 
}
```
```
{
    你好世界
}
```
5. 
```
{
    erichebert@Erics-MacBook-Pro ~ % 
    cd Documents/GitHub/lecture1 && cat README
}
```
```
{
    To use this program:

    javac Hello.java
    java Hello messages/en-us.txt
}
```

6. 
```
{
    erichebert@Erics-MacBook-Pro lecture1 % 
    java Hello messages/en-us.txt 
}
```
```
{
    Hello World!
}
```


7. 
```
{
    erichebert@Erics-MacBook-Pro ~ % 
    ls Documents/GitHub/lecture1 
}
```
```
{
    Hello.class     Hello.java      README          messages
}
```

8. 
```
{
    erichebert@Erics-MacBook-Pro /Users % 
    ls erichebert/Documents/GitHub/lecture1/messages
}
```
```
{
    en-us.txt       es-mx.txt       jp.txt          zh-cn.txt
}
```

9. 
```
{
    erichebert@Erics-MacBook-Pro / % 
    ls Users/erichebert/Documents/GitHub 
}
```
```
{
    cse15l-lab-reports      lecture1
}
```