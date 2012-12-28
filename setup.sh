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

# library
LIB_FILES=('colors' 'theme' 'enviroment' 'appearance' 'helpers' 'history' 'preexec')
for lib_file in $LIB_FILES
do
  source "${BASHED_DIR}/lib/${lib_file}.bash"
done
unset config_file

# Load extras
load_bash_aliases
load_bash_completion
load_bash_plugins

if [[ $PROMPT ]]; then
    export PS1=$PROMPT
fi
