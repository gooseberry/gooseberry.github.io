#!/usr/bin/env bash


FILE=${HOME}/setup_quake_the_offering_*.exe
DATA=${HOME}/.quakespasm
TMP=${HOME}/tmp_quake_installer

GAME_FILES=(id1/PAK0.PAK \
  id1/PAK1.PAK \
  hipnotic/pak0.pak \
  rogue/pak0.pak)

## initial checks before running any part of the script

# Check for the gog install file
#if [ ! -f "$FILE" ] ; then
#  echo "$FILE does not exist.  Please place the Quake Windows offline backup installer"
#  echo "in your home directory and try to run the script again."
#  exit 1
#else
#  echo "$FILE found.  OK!"
#fi

# Check that the quakespasm data folder exists
if [ ! -d "$DATA" ] ; then
  echo "$DATA does not exist.  Please install the quakespasm package and try again."
  exit 1
else
  echo "$DATA found.  Creating directories for game data."
  mkdir -p $DATA/id1/music
  mkdir -p $DATA/hipnotic/music
  mkdir -p $DATA/rogue/music
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

echo "Moving game files into quakespasm folder."
for i in "${GAME_FILES[@]}"
do
  :
  if [ -f "$TMP/app/$i" ] ; then
    mv $TMP/app/$i $DATA/$i
  fi
done

# convert the quake files to lowercase
cd $DATA/id1
for i in $( ls | grep [A-Z] );
do
  :
  mv -i $i `echo $i | tr 'A-Z' 'a-z'`;
done

# convert cd image to WAV
# convert cd music to ogg if bchunk and oggenc is present.  Otherwise, skip.
if [ "$command -v bchunk" ] && [ "$command -v oggenc" ] ; then
  # convert cd image to WAV
  bchunk -w $TMP/app/game.gog $TMP/app/game.cue $DATA/id1/music/track
  rm $DATA/id1/music/track01.iso
  bchunk -w $TMP/app/gamea.gog $TMP/app/gamea.cue $DATA/hipnotic/music/track
  rm $DATA/hipnotic/music/track01.iso
  bchunk -w $TMP/app/gamed.gog $TMP/app/gamed.cue $DATA/rogue/music/track
  rm $DATA/rogue/music/track01.iso

  # convert WAV to ogg
  cd $DATA/id1/music
  for i in $( ls *.wav );
  do
    :
    oggenc -q 8 $i
    rm $i
  done

  cd $DATA/hipnotic/music
  for i in $( ls *.wav );
  do
    :
    oggenc -q 8 $i
    rm $i
  done

  cd $DATA/rogue/music
  for i in $( ls *.wav );
  do
    :
    oggenc -q 8 $i
    rm $i
  done

fi

# Download the desktop Icons


# Creating desktop files.
cat >${HOME}/.local/share/applications/quake.desktop >>EOL
[Desktop Entry]
Encoding=UTF-8
Value=1.0
Type=Application
Name=Quake
GenericName=Quake
Comment=Quake The Offering
Icon=${HOME}/.local/share/icons/quake.png
Exec=quakespasm +playdemo demo1
Categories=Game;
Path=/usr/games
EOL

cat >${HOME}/.local/share/applications/quake-soa.desktop >>EOL
[Desktop Entry]
Encoding=UTF-8
Value=1.0
Type=Application
Name=Quake SoA
GenericName=Quake Scourge of Armagedon
Comment=Quake Map Pack 1 Scourge of Armagedon
Icon=${HOME}/.local/share/icons/quake-soa.png
Exec=quakespasm -game hipnotic
Categories=Game;
Path=/usr/games
EOL

cat >${HOME}/.local/share/applications/quake-doe.desktop >>EOL
[Desktop Entry]
Encoding=UTF-8
Value=1.0
Type=Application
Name=Quake DoE
GenericName=Quake Dissolution of Eternity
Comment=Quake Map Pack 2 Dissolution of Eternity
Icon=${HOME}/.local/share/icons/quake-doe.png
Exec=quakespasm -game rogue
Categories=Game;
Path=/usr/games
EOL

# Cleanup
echo "Deleting the temp folder and all its contents"
rm -rf $TMP

echo "Deleting the Quake installer file."
rm $FILE

exit 0
