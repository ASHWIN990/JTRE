#!/usr/bin/env bash

#Tool Name = JTRE
#Author = ASHWINI SAHU (GitHub : ASHWIN990)
#Date = 30/07/2019
#Shell Must be used BASH not another like fish, ZSH and any other


#Banner

banner () {

echo -e "\e[1;93m"

cat << "EOF"
    _____  ________  _______   ________ 
   |     \|        \|       \ |        \
    \$$$$$ \$$$$$$$$| $$$$$$$\| $$$$$$$$
      | $$   | $$   | $$__| $$| $$__    
 __   | $$   | $$   | $$    $$| $$  \   
|  \  | $$   | $$   | $$$$$$$\| $$$$$   
| $$__| $$   | $$   | $$  | $$| $$_____ 
 \$$    $$   | $$   | $$  | $$| $$     \
  \$$$$$$     \$$    \$$   \$$ \$$$$$$$$

EOF

echo -e "\e[0m"
echo -e "\e[93mMade with LOVE by \e[1;91mASHWINI SAHU\e[0m"
}


#Checking if the install script is runed or not

check-installation () {

if [ -d $PWD/.temp/ ]
    then
        echo -e "YOU HAVE THE .temp DIRECTORY" && clear
    else
        echo -e "PLEASE INSTALL THE TOOL FIRST" && exit
fi

}

if [ -d $PWD/.john.pot/ ]
    then
        echo -e "YOU HAVE THE .john.pot DIRECTORY" && clear
    else
        echo -e "PLEASE INSTALL THE TOOL FIRST" && exit
fi

#Options List Function

options-list () {

banner
echo -e "\nJOHN THE RIPPER EASY\n\nCrack the password in ease\n\n\n"
echo -e "\e[1;93m1.   \e[1;92mCrack Linux USER and Root Password"
echo -e "\e[1;93m2.   \e[1;92mCrack MD5 Hash"
echo -e "\e[1;93m3.   \e[1;92mCrack Other Hash Algorithms"
echo -e "\e[1;93m4.   \e[1;92mCrack Compressed File Password"
echo -e "\e[1;93m5.   \e[1;92mCrack PDF File Password"
echo -e "\e[1;93m6.   \e[1;92mCrack SSH Key Password\n"
echo -e "\e[1;92mNEW THINGS COMING SOON...........\n\n"

}

#Option Selector Function

options-selector () {

while true;
do
read -p $'\e[1;4;91mSELECT ONE OF THE OPTIONS WITH THE RESPECTED NUMBER\e[0m\e[24;1;97m : ' options
case $options in
[1]* )  echo && bash modules/opt1 ;exit;;
[2]* )  echo && bash modules/opt2 ;exit;;
[3]* )  echo && bash modules/hash-crack/opt3 ;exit;;
[4]* )  echo && bash modules/opt4 ;exit;;
[5]* )  echo && bash modules/opt5 ;exit;;
[6]* )  echo && bash modules/opt6 ;exit;;
* ) clear && options-list && echo -e "\e[1;92mPlease answer it with right options \n\e[0m";;
esac
done

}

check-installation
options-list
options-selector


#ASHWIN990 , ASHWINI SAHU
