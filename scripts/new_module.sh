#!/usr/bin/env bash
set -e

if [ $# -ne 3 ]; then
  echo "Usage: $0 <module|tb> <name> <project>"
  exit 1
fi

TYPE=$1
NAME=$2
PROJECT=$3

DEST=""
TEMPLATE=""

if [ "$TYPE" = "module" ]; then
  DEST="src/$PROJECT/rtl"
  TEMPLATE="templates/module.v.tpl"
elif [ "$TYPE" = "tb" ]; then
  DEST="src/$PROJECT/tb"
  TEMPLATE="templates/tb.v.tpl"
else
  echo "Unknown type $TYPE"
  exit 1
fi

mkdir -p "$DEST"
sed "s/{{NAME}}/$NAME/g" "$TEMPLATE" > "$DEST/$NAME.v"
echo "$TYPE '$NAME' created in project '$PROJECT'"
