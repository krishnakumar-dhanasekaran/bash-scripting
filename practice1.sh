#! /bin/bash
rand=$RANDOM
score=100
echo "enter the guessed number"
while(true)
do
  read user_input
  if [ $user_input -eq $rand ]
  then
    echo "you won"
    break
  elif [ $user_input -gt $rand ]
  then
    echo "your guess is high"
  else
    echo "your guess is low"
  fi
  ((--score))

done
echo "  "
echo "The number is $user_input"
echo "your score is $score"
