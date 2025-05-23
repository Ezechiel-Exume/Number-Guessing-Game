#!/bin/bash
PSQL="psql --username=freecodecamp --dbname=number_guess -t --no-align -c"

#generate a random number between 1 and 1000
SECRET_NUM=$(( (RANDOM % 1000) + 1 ))
echo $SECRET_NUM

echo "Enter your username:"
read USERNAME

USER_ID=$($PSQL "SELECT user_id FROM users WHERE username = '$USERNAME'")



if [[ -z $USER_ID ]]
then
  echo "Welcome, $USERNAME! It looks like this is your first time here."  
else
  GAME_PLAYED=$($PSQL "SELECT COUNT(game_id) FROM games WHERE user_id = $USER_ID")
  BEST_GAME=$($PSQL "SELECT MIN(best_game) FROM games WHERE user_id = $USER_ID")
  echo "Welcome back, $USERNAME! You have played $GAME_PLAYED games, and your best game took $BEST_GAME guesses."
fi

echo "Guess the secret number between 1 and 1000:" 
read GUESSED_NUM

while [[ ! $GUESSED_NUM =~ ^[0-9]+$ ]]
do
echo "That is not an integer, guess again:"
read GUESSED_NUM
done


NUMBER_OF_GUEST=1
while [ $SECRET_NUM -ne $GUESSED_NUM ]
do
  if [ $SECRET_NUM -gt $GUESSED_NUM ]
  then
    echo "It's higher than that, guess again:"
    read GUESSED_NUM
    (( NUMBER_OF_GUEST++ ))
  else
     echo "It's lower than that, guess again:"
     read GUESSED_NUM
     (( NUMBER_OF_GUEST++ ))
  fi
done

echo "You guessed it in $NUMBER_OF_GUEST tries. The secret number was $SECRET_NUM. Nice job!"

#Insert data into database if not user_id empty
if [[ -z $USER_ID ]]
then
  INSERT_USER=$($PSQL "INSERT INTO users(username) VALUES('$USERNAME')")
  USER_ID=$($PSQL "SELECT user_id FROM users WHERE username = '$USERNAME'")
  INSERT_GAME=$($PSQL "INSERT INTO games(user_id, games_played, best_game) VALUES($USER_ID,'Game 1',$NUMBER_OF_GUEST)")
else
  GAMES_PLAYED=$($PSQL "SELECT COUNT(game_id) FROM games WHERE user_id = $USER_ID")
  (( GAMES_PLAYED++ ))
  INSERT_GAME=$($PSQL "INSERT INTO games(user_id, games_played, best_game) VALUES($USER_ID,'Game $GAMES_PLAYED',$NUMBER_OF_GUEST)")
fi
