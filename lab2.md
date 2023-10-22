##This is the second lab report for CS15L of FA23

#Part 1
In the following code block is my StringServer.java file.
```
{

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

}
```

#Part 2: Generating SSH Key
The outputs from running this program are in the picture below.
![Generating SSH Key](https://github.com/Herbie001/cse15l-lab-reports/blob/main/images/PA2%20Images/ssh%20key%20generation.png)