#! /bin/bash

TOKEN_V2=$1
NOTION_PAGE=$2

##########YOU SHOULD BE UPDATE BELOW WORK DIRECTORY#######
WORK_DIR=" "
#########################################################

if [ -z "$TOKEN_V2" ] || [ -z "$NOTION_PAGE" ]; then
  echo "There is no parameter TOKEN_V2 or NOTION_PAGE to import md file"
  exit 1
else
   if [ ! "$(ls -A $WORK_DIR)" ]; then
      echo "No such file or directory"
      exit 1 
   else
      python3 -m md2notion $TOKEN_V2 $NOTION_PAGE $WORK_DIR/*.md
   fi
fi

exit 0
