# This is the second lab report for CS15L of FA23

## Part 1
In the following code block is my StringServer.java file.
```
import java.io.IOException;
import java.net.URI;
import java.util.ArrayList;
import java.lang.StringBuilder;
import java.net.URLDecoder;
class Handler implements URLHandler {
    // The one bit of state on the server: a number that will be manipulated by
    // various requests.
    ArrayList<String> words = new ArrayList<>();

    public String handleRequest(URI url) {
        // "add-message?s=Hello" and returns the message
        if(url.getPath().equals("/add-message")) {
            String[] parameters = url.getQuery().split("=");
            // TA: add delimeter in between spaces such as $ and then replace them afterwards with space
            if(parameters[0].equals("s")) {
                words.add(parameters[1].toString());
            }
        }
        // Plus sign is ok
        String tmpStr = "";
        for(int i = 0; i < words.size(); i++) {
            String wordToGet = words.get(i);
            tmpStr += (i+1) + ". " + wordToGet + "\n";
        }
        return tmpStr;
    }
}

class StringServer {
    public static void main(String[] args) throws IOException {
        if(args.length == 0){
            System.out.println("Missing port number! Try any number between 1024 to 49151");
            return;
        }

        int port = Integer.parseInt(args[0]);

        Server.start(port, new Handler());
    }
}
```
## Pictures from output using codeblock above:

This is screenshot one from using the following request: /add-message?s=Hello
![StringServer output 1](<images/PA2 Images/StringServer-output-1.png>)

This next screenshot demonstrates storing and keeping track of previous messages
![StringServer output 2](<images/PA2 Images/StringServer-output-2.png>)

## Part 2: Generating SSH Key

The outputs from running this program are in the picture below. As you can see,
the paths for the private and public keys are located in the folder created.

![SSH Generation](<images/PA2 Images/ssh key generation.png>)

Next, here is a screenshot of the ls command with the complete path to the 
location of the the private key and public keys used to authorize me loggoing
 onto the ieng6 server at UCSD.

![ls SSH direct path](<images/PA2 Images/ls-SSH-Screenshot.png>)

Finally, here is a picture of me logging into the ieng6 server without inputting my password.

![Logging into ieng server](<images/PA2 Images/Screenshot 2023-10-22 at 3.04.21 PM.png>)

## Part 3: Reflection
During week three, I learned about SSH keys and generating them on my PC. Additionally, I learned the difference of
private keys, public keys and their significance. I also learned a lot during weeks two and three regarding 
server implementation and running programs using paths and queries. I actually found this really fun because it's
basically a primitive form of how websites work. I find website developement and the ingenuity behind their interfaces
really interesting, so these past two weeks have been very enjoyable!
