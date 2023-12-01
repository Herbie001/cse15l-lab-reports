CPATH='.:lib/hamcrest-core-1.3.jar:lib/junit-4.13.2.jar'

COMPILEERRORTXT="compile-error.txt"
javac -cp "$CPATH" *.java 2> $COMPILERERRORTXT
if [[  $? -eq "1" ]]
then
	printf "Compiler Error: \n $(<$COMPILERERRORTXT)\n"
	printf "Score: 0"
	exit
else
	echo Compile Success
fi

TESTS="test-output.txt"
TESTPARSE="test-parse.txt"
TESTNUMPARSE="test-ran-failed.txt"

java -cp "$CPATH" org.junit.runner.JUnitCore BuggyExample > $TESTS

VALID="valid.txt"

