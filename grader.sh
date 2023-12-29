
original_dir=`pwd`

for submission_dir in submissions/*
do
  echo $submission_dir
  cd $submission_dir

# if there's a compile error, creates new file in student dir with error info.
  javac Sorter.java 2> error-messages.txt

  # Replace this with a condition that does the appropriate check
  if [[ $? != 0 ]]
  then
    echo "$submission_dir: Compile error" > result.txt    
    cd $original_dir
    continue
  else
    echo "Compile successful for $submission_dir"
  fi

  passed=0
  failed=0
  for test_file in $original_dir/test-data/*.txt
  do
    result=`java Sorter < $test_file`
    expect=`cat $test_file.expect`
    if [[ $expect == $result ]]
    then
      passed=$(( $passed+1 ))
    else
      failed=$(( $failed+1 ))
    fi
  done
  echo "$submission_dir: Test results: $passed passed, $failed failed" > result.txt
  cd $original_dir
done

# recursively goes through and finds the files
all_results=`find submissions -name "result.txt"`
# get all the compile errors from the variable just created
grep "Compile error" $all_results > compile-errors.txt

# Here, add code to put all of the results for files that successfully ran into
# run-results.txt
# gets the paths of files which compiled successfully
grep "Test results" $all_results > run-results.txt
