function load_bash_aliases() {
  for name in $aliases
  do
    if [ -e "${BASHED_DIR}/aliases/${name}.bash" ]; then
      source "${BASHED_DIR}/aliases/${name}.bash"
    fi
  done
}

function load_bash_completion() {
  for name in $completion
  do
    if [ -e "${BASHED_DIR}/completion/${name}.bash" ]; then
      source "${BASHED_DIR}/completion/${name}.bash"
    fi
  done
}

function load_bash_plugins() {
  for name in $plugins
  do
    if [ -e "${BASHED_DIR}/plugins/${name}.bash" ]; then
      source "${BASHED_DIR}/plugins/${name}.bash"
    fi
  done
}

_is_function ()
{
    [ -n "$(type -a $1 2>/dev/null | grep 'is a function')" ]
}
