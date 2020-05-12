#!/usr/bin/env bash
#
# Good Old Chromebook (https://gooseberry.github.io)

# abort on nonzero exitstatus
set -o errexit
# abort on unbound variable
set -o nounset
# don't hide errors within pipes
set -o pipefail

readonly script_name=$(basename "${0}")
readonly script_dir=$( cd "$( dirname "${BASH_SOURCE[0]}" )" && pwd )

# Install Script Variables
readonly ICONS_DIR=${HOME}/.local/share/icons
readonly DESKTOP_ENTRIES=${HOME}/.local/share/applications
readonly BASE_URL="https://gooseberry.github.io/assets/images/"

# Helper Functions
install_files () {
  src=$1
  dst=$2
  files=$3

  for file in "${files[@]}"
  do
    if [ -f "${src}/${file}" ] ; then
      mv "${src}/${file}" "${dst}/${file}"
    fi
  done
}

convert_music () {

  bin_file=$1
  cue_file=$2
  dest_dir=$3

  bchunk -w "${bin_file}" "${cue_file}" "${dest_dir}/track"
  rm "${dest_dir}/track01.iso"

  cd "${dest_dir}"
  for track in $( ls *.wav );
  do
    oggenc -q 8 "${track}"
    rm "${track}"
  done
}

generate_config () {

  config_file=$1
  music_dir=$2
  # Create a config file to play CD music by default if one does not already exist
  # The music can be changed in game.
  if [ ! -e "${config_file}"  ] ; then
    cat >${config_file} <<-CNFG
    MusicType=3
    CMLevelMusicPath=$music_dir
    CMMiscMusic0=${music_dir}/track02.ogg
    CMMiscMusic1=${music_dir}/track03.ogg
    CMMiscMusic2=${music_dir}/track04.ogg
    CMMiscMusic3=${music_dir}/track08.ogg
    CMMiscMusic4=${music_dir}/track09.ogg
CNFG
  fi

download () {
  filename=$1

  wget "${BASE_URL}/${filename}" -O "${ICONS_DIR}/${filename}"
}

generate_desktop_entry () {
  icon=$1
  name=$2
  exec_string=$3

  cat >${DESKTOP_ENTRIES}/${icon}.desktop <<-DSKTP
  [Desktop Entry]
  Encoding=UTF-8
  Value=1.0
  Type=Application
  Name=${name}
  Icon=${ICONS_DIR}/${icon}.png
  Exec=${exec_string}
  Categories=Game;
  Path=/usr/games
DSKTP
}



main () {

  installer=$1
  tmp_dir="${HOME}/tmp_descent2_installer"
  game_source="${tmp_dir}/app"
  game_dir="${HOME}/.d2x-rebirth"
  bin_file="${game_source}/descent_ii.gog"
  cue_file="${game_source}/descent_ii.inst"
  config_file="${game_dir}/descent.cfg"
  game_files=(descent2.ham \
    descent2.hog \
    descent2.s11 \
    descent2.s22 \
    alien1.pig \
    alien2.pig \
    fire.pig \
    groupa.pig \
    ice.pig \
    water.pig \
    intro-h.mvl \
    other-h.mvl \
    robots-h.mvl)

  mkdir -p "${tmp_dir}"

  innoextract --lowercase -d "${tmp_dir}" "${installer}"

  mkdir -p "${game_dir}/music"
   
  
  # These variables are only needed to create a desktop entry
  #desktop="descent-2"
  #name="Descent 2"
  #exec_string="d2x-rebirth"
  
  install_files "${game_source}" "${game_dir}" "${game_files[@]}"
  convert_music "${bin_file}" "${cue_file}" "${game_dir}/music"
  generate_config "$config_file" "${game_dir}/music"
    
  # This part is only required if the game does not create a desktop entry.
  # since d2x-rebirth creates a desktop entry, this step is skipped
  #download "${desktop}.png"
  #generate_desktop_entry "${desktop}" "${name}" "${exec_string}"

  # Clean up delete the temp folder
  rm -rf "${TMP_DIR}" 

  exit 0
}

main $1
