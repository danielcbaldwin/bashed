#!/usr/bin/env bash

# Get working directory
SOURCE="${BASH_SOURCE[0]}"
export BASHED_DIR="$( dirname "$SOURCE" )"
while [ -h "$SOURCE" ]
do 
  SOURCE="$(readlink "$SOURCE")"
  [[ $SOURCE != /* ]] && SOURCE="$DIR/$SOURCE"
    export BASHED_DIR="$( cd -P "$( dirname "$SOURCE"  )" && pwd )"
  done
export BASHED_DIR="$( cd -P "$( dirname "$SOURCE" )" && pwd )"

# Load colors first so they can be used in base theme
source "${BASHED_DIR}/bash/themes/colors.theme.bash"
source "${BASHED_DIR}/bash/themes/base.theme.bash"

# library
LIB="${BASHED_DIR}/bash/lib/*.bash"
for config_file in $LIB
do
  source $config_file
done
unset config_file

# Load enabled aliases, completion, plugins
for file_type in "aliases" "completion" "plugins"
do
  _load_bash_additions $file_type
done
unset file_type

if [[ $PROMPT ]]; then
    export PS1=$PROMPT
fi
