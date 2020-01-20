#!/data/data/com.termux/bin/bash
#!/bin/bash
clear

banner(){
	echo -e '\e[37m
	\tCode: YamanEfkar\033[31;40;1m
	¸.•*´¨`*•.¸¸.•*´¨`*•¸.•*´¨`*•.¸
	░
	░\e[31m[\e[37m01\e[31m]\e[37mExploit\033[31;40;1m
	░
	░\e[31m[\e[37m02\e[31m]\e[37mPhishing\033[31;40;1m
	░
	░\e[31m[\e[37m03\e[31m]\e[37mBruteForce\033[31;40;1m
	░
	░\e[31m[\e[37m04\e[31m]\e[37mDos & Ddos\033[31;40;1m
	░
	░\e[31m[\e[37m05\e[31m]\e[37mPentest\033[31;40;1m
	░
	░\e[31m[\e[37m06\e[31m]\e[37mChat & Update\033[31;40;1m
	░
	░¸.•*´¨`*•.¸¸.•*´¨`*•¸.•*´¨`*•.

	\e[33m[\e[37m\t  MENU   \t\e[33m]

	\e[31m[\e[37m99\e[31m]\e[37mÇıkış\e[31m  [\e[37mExit\e[31m]\e[37m
	'

	read -p $'\e[31m▂\e[32m▃\e[31m▃\e[37m İşlem Numarası : ' islem_numarasi

}

banner

if [[ $islem_numarasi == 01 ||  $islem_numarasi == 1  ]]; then
	cd exploit/ && bash tst.sh

elif [[ $islem_numarasi == 02 ||  $islem_numarasi == 2  ]]; then
	cd phishing/ && bash tst.sh

elif [[ $islem_numarasi == 03 ||  $islem_numarasi == 3  ]]; then
	cd bruteforce/ && bash tst.sh

elif [[ $islem_numarasi == 04 ||  $islem_numarasi == 4  ]]; then
	clear
	sleep 1
	chmod 777 dos-ddos/ssa
	read -p $'\e[31m▂\e[32m▃\e[31m▃\e[37m İp adresi : ' dos_ip
	echo -e ""
	read -p $'\e[31m▂\e[32m▃\e[31m▃\e[37m Port Numarası [80 , 21 , 22] : ' dos_port
	cd dos-ddos/ && bash ssa $dos_ip -p $dos_port 

elif [[ $islem_numarasi == 05 ||  $islem_numarasi == 5  ]]; then
	cd pentest/ && bash tst.sh

elif [[ $islem_numarasi == 06 ||  $islem_numarasi == 6  ]]; then
	cd update/ && bash tst.sh

elif [[ $islem_numarasi == 99 ||  $islem_numarasi == 9  ]]; then
	clear
	echo -e "\e[37mGüle güle..."
	sleep 2
	clear
	exit
else
	bash tst.sh
fi
