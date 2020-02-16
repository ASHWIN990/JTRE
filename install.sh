#!/usr/bin/env bash

echo "Command used '$1'"

if [ $(id -u) -ne 0 ]; then
        echo "THIS SCRIPT MUST BE RAN AS ROOT"
        exit
fi

help () {

echo -e "This is a tool developed to easily crack the password without learning the syntax for many, this tool is based on the tool John The Ripper©, I hope this will help you and make your Penetration Testing lil bit easy.\nRecommended Linux Distro = Kali, Tested in Kali Rolling"
echo -e "To install the script use :- \n\e[1;91mbash $0 install \e[92mor \e[1;91mbash $0 -i \e[92mor \e[1;91mbash $0 -install"

}

opt-install () {

if ! which john > /dev/null; then
   echo -e "'John the Ripper (john)' not found trying to install it.\n\n"
   apt-get install john -y
fi

if ! which python > /dev/null; then
   echo -e "'Python2' not found trying to install it.\n\n"
   apt-get install python -y
fi

if ! which john > /dev/null; then
    echo -e "'John the Ripper (john)' not installed try to install it manually ."

else

  if [ -f ~/.bash_aliases ]
    then
        echo "alias jtre='cd $PWD && bash jtre.sh'" >> ~/.bash_aliases
    else
        echo "The .bash_aliases file not found creating a new one and making an alias for quick launch."
        touch ~/.bash_aliases
        echo "alias jtre='cd $PWD && bash jtre.sh'" >> ~/.bash_aliases
	mkdir .temp && mkdir  .john.pot
  fi
fi
chmod +x jtre.sh && echo -e "\nJTRE is installed to launch the script use  \e[1;91m./jtre.sh \e[1;92mor \e[1;91mbash jtre.sh \e[1;92mor by alias \e[1;91mjtre"
}


if [[ ("$1" = "install" || "$1" = "-i" || "$1" = "-install") ]]

  then
      opt-install
  else
     help
fi


#Copyright : ASHWIN990 , ASHWINI SAHU
