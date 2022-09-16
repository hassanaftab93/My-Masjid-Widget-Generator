#!/bin/sh

# TODO NOTES

# Steps to Automate:

#   1. Enter Masjid Name

#   2. Paste Masjid Link
#       For Example: https://time.my-masjid.com/timingscreen/46c4af4e-e99e-4c13-8ade-64d45a0cbf95

#   3. Replace "timingscreen" -> "widget"
#   4. Insert the $LINK in the iframe code
#   5. Insert the $NAME in the iframe code
#   6. Output received

#   ----------------------------------------------------------------------------------------------
STRING_WIDGET="widget"
STRING_TIMING="timingscreen"

clear
sleep 0.5
echo "\n Loading"
sleep 0.5
clear
echo "\n Loading."
sleep 0.5
clear
echo "\n Loading.."
sleep 0.5
clear

echo "
 __   __  __   __             __   __  _______  _______      ___  ___   ______  
|  |_|  ||  | |  |           |  |_|  ||   _   ||       |    |   ||   | |      | 
|       ||  |_|  |   ____    |       ||  |_|  ||  _____|    |   ||   | |  _    |
|       ||       |  |____|   |       ||       || |_____     |   ||   | | | |   |
|       ||_     _|           |       ||       ||_____  | ___|   ||   | | |_|   |
| ||_|| |  |   |             | ||_|| ||   _   | _____| ||       ||   | |       |
|_|   |_|  |___|             |_|   |_||__| |__||_______||_______||___| |______| 
\n"

echo "                                                                  
 _ _ _ _   _         _      _____                     _           
| | | |_|_| |___ ___| |_   |   __|___ ___ ___ ___ ___| |_ ___ ___ 
| | | | | . | . | -_|  _|  |  |  | -_|   | -_|  _| .'|  _| . |  _|
|_____|_|___|_  |___|_|    |_____|___|_|_|___|_| |__,|_| |___|_|  
            |___|                                                 
\n"

echo "\nENTER MASJID NAME: "
read MASJID_NAME

#echo "MASJID NAME ENTERED IS: $MASJID_NAME"

if [ "$MASJID_NAME" == "" ]
then
    echo "\n\nNo Name Entered\n\nExiting..\n\n"
    exit
else
    break
fi

echo "\n"

echo "\nPASTE MASJID LINK: "
read MASJID_LINK

#echo "MASJID NAME ENTERED IS: $MASJID_LINK"

if [ "$MASJID_LINK" == "" ]
then
    echo "\n\nNo Link Entered\n\nExiting..\n\n"
    exit
else
    break
fi

EDIT_LINK="${MASJID_LINK/$STRING_TIMING/$STRING_WIDGET}"

IFRAME_CODE="<iframe src=\"$EDIT_LINK\" height=\"305\" width=\"360\" title=\"$MASJID_NAME\" style=\"outline:none;border:none;\"></iframe>"

clear

echo "\n\n IFRAME CODE:\n\n$IFRAME_CODE"

sleep 60