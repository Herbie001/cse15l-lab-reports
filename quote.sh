# Three different quote characters: double, single, back
DIR=`pwd`
#PIPE=$( find test-files | wc -l) # another way for command substitution
variable1='Hello'
variable2="MORE MORE $variable1" # will actually print contents of variable1
variable3='MOREMORE $variable1' # will print variable1
variable4="MOREMOREMORE $variable3 $variable2"

echo $DIR
echo $'hello'
echo $variable1
echo $variable2
echo $variable4