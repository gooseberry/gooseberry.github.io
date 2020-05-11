#!/usr/bin/env bash


FILE=${HOME}/setup_descent_2_*.exe
DATA=${HOME}/.d2x-rebirth
TMP=${HOME}/tmp_descent_installer
CONFIG_FILE=${DATA}/descent.cfg

GAME_FILES=(DESCENT2.HAM \
  DESCENT2.HOG \
  DESCENT2.S11 \
  DESCENT2.S22 \
  DESCENT_II.gog \
  DESCENT_II.inst \
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

# Check for the gog install file
if [ ! -f "$FILE" ] ; then
  echo "$FILE does not exist.  Please place the Descent 2 Windows offline backup installer"
  echo "in your home directory and try to run the script again."
  exit 1
else
  echo "$FILE found.  OK!"
fi

# Check that the d2x-rebirth data folder exists
if [ ! -d "$DATA" ] ; then
  echo "$DATA does not exist.  Please install the d2x-rebirth package and try again."
  exit 1
else
  echo "$DATA found.  OK!"
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
innoextract -q -d $TMP $FILE

echo "Moving game files into d2x-rebirth folder."
for i in "${GAME_FILES[@]}"
do
  :
  if [ -f "$TMP/app/$i" ] ; then
    mv $TMP/app/$i $DATA/$i
  fi
done

# convert all files in d2x-rebirth to lowercase
cd $DATA
for i in $( ls | grep [A-Z] );
do
  :
  mv -i $i `echo $i | tr 'A-Z' 'a-z'`;
done

# convert cd image to WAV
# convert cd music to ogg if bchunk and oggenc is present.  Otherwise, skip.
if [ "$command -v bchunk" ] && [ "$command -v oggenc" ] ; then
  # covert cd image to WAV
  mkdir $DATA/music
  bchunk -w $DATA/descent_ii.gog $DATA/descent_ii.inst $DATA/music/descent_2_ost_
  rm $DATA/music/descent_2_ost_01.iso

  # convert WAV to ogg
  cd $DATA/music
  for i in $( ls *.wav );
  do
    :
    oggenc -q 8 $i
    rm $i
  done

  # Create a config file to play CD music by default if one does not already exist
  # The music can be changed in game.
  if [ ! -e "${CONFIG_FILE}"  ] ; then
    touch $CONFIG_FILE
    echo "MusicType=3" | tee -a $CONFIG_FILE
    echo "CMLevelMusicPath=$DATA/music" | tee -a $CONFIG_FILE
    echo "CMMiscMusic0=$DATA/music/descent_ii02.ogg" | tee -a $CONFIG_FILE
    echo "CMMiscMusic1=$DATA/music/descent_ii03.ogg" | tee -a $CONFIG_FILE
    echo "CMMiscMusic2=$DATA/music/descent_ii04.ogg" | tee -a $CONFIG_FILE
    echo "CMMiscMusic3=$DATA/music/descent_ii08.ogg" | tee -a $CONFIG_FILE
    echo "CMMiscMusic4=$DATA/music/descent_ii09.ogg" | tee -a $CONFIG_FILE
  fi
fi

# Cleanup
echo "Deleting the temp folder and all its contents"
rm -rf $TMP

echo "Deleting the Descent 2 installer file."
rm $FILE

exit 0
