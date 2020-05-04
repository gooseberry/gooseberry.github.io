#!/usr/bin/env bash


FILE=${HOME}/setup_descent_2_1.1_\(16596\).exe
DST=${HOME}/.d2x-rebirth
TMP=${HOME}/tmp_gog_installer

GAME_FILES=(DESCENT2.HAM \
  DESCENT2.HOG \
  DESCENT2.S11 \
  DESCENT2.S22 \
  ALIEN1.PIG \
  ALIEN2.PIG \
  FIRE.PIG \
  GROUPA.PIG \
  ICE.PIG \
  WATER.PIG \
  INTRO-H.MVL \
  OTHER-H.MVL \
  ROBOTS-H.MVL)

## initial checks before running any part of the script

# The setup file
if [ ! -f "$FILE" ] ; then
  echo "$FILE does not exist.  Aborting."
  exit 1
else
  echo "$FILE found.  OK!"
fi

# The destination folder
if [ ! -d "$DST" ] ; then
  echo "$DST does not exist.  Aborting."
  exit 1
else
  echo "$DST found.  OK!"
fi

# check if innoextract is installed
if ! [ "$command -v innoextract" ] ; then
  echo "innoextract is not installed.  Aborting."
  exit 1
else
  echo "innoextract found.  OK!"
fi

# create tmp folder in home
if [ ! -d "$TMP" ] ; then
  mkdir $TMP
fi

echo "Extracting $FILE..."
# innoextract -q -d $TMP $FILE

echo "Moving game files into d2x-rebirth folder."
for i in "${GAME_FILES[@]}"
do
  :
  if [ -f "$TMP/app/$i" ] ; then
    mv $TMP/app/$i $DST/$i
  fi
done

# convert all files in d2x-rebirth to lowercase
cd $DST
for i in $( ls | grep [A-Z] );
do
  :
  mv -i $i `echo $i | tr 'A-Z' 'a-z'`;
done

exit 0