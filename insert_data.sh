#! /bin/bash

if [[ $1 == "test" ]]
then
  PSQL="psql --username=postgres --dbname=worldcuptest -t --no-align -c"
else
  PSQL="psql --username=freecodecamp --dbname=worldcup -t --no-align -c"
fi

# Do not change code above this line. Use the PSQL variable above to query your database.
declare -A SAVED_TEAMS

cat games.csv | while IFS="," read YEAR ROUND WINNER OPPONENT WINNER_GOALS OPPONENT_GOALS;
do
if [[ $YEAR -ne "year" ]]
then
  #CHECK IF TEAM HAS DATA
  WINNER_ID=$($PSQL "SELECT team_id FROM teams WHERE name='$WINNER'")
  OPPONENT_ID=$($PSQL "SELECT team_id FROM teams WHERE name='$OPPONENT'")

  # insert if winner not exits
  if [[ -z "${SAVED_TEAMS[$WINNER]}" &&  -z $WINNER_ID  ]]
  then
   $PSQL "INSERT INTO teams(name) VALUES('$WINNER')"
   WINNER_ID=$($PSQL "SELECT team_id FROM teams WHERE name='$WINNER' ")
  fi

  if [[ -z "${SAVED_TEAMS[$OPPONENT]}" && -z $OPPONENT_ID ]]
  then
    $PSQL "INSERT INTO teams(name) VALUES('$OPPONENT')"
    OPPONENT_ID=$($PSQL "SELECT team_id FROM teams WHERE name='$OPPONENT'")
  fi

  #insert games
  $PSQL "INSERT INTO games(year, round, winner_id, opponent_id, winner_goals, opponent_goals) VALUES($YEAR, '$ROUND', $WINNER_ID, $OPPONENT_ID, $WINNER_GOALS, $OPPONENT_GOALS)"
fi
done
