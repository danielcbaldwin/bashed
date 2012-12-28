if [ "$(type -t _z)" == "function" ]; then
  echo $PROMPT_COMMAND | grep -q "z --add"
  [ $? -gt 0 ] && PROMPT_COMMAND='z --add "$(pwd -P)";'"$PROMPT_COMMAND"
fi
