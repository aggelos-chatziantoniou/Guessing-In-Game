#!/bin/bash
# The number of files in the current directory are stored here
all_files_here=$(find . -maxdepth 1 -type f | wc -l)
# This is used in the loop
loop=true
# This function is used in the loop
# It will ask the user to enter the number
# It will check if the user entered a number

# Then compares the number and returns a text
# if its higher than the files in the current directory
function read_answer(){
  read -p "Please guess the number of files in this directory: " -a answer
  if ! [[ "$answer" =~ ^[0-9]+$ ]];then
    echo "Sorry integers only"
  elif (( $answer == $all_files_here ));then
    echo "Congratulations!"
    loop=false
  elif (( $answer < $all_files_here ));then
    echo "Nope its higher then that!"
  else
    echo "Nope its lower then that!"
  fi
}
while $loop; do
  read_answer
done
