#!/bin/bash
PORT=7023
SECTION=$1
DEVICE=$2
TORUN=$3

TSR1="172.16.11.101"
TSR2="172.16.11.102"
TSR3="172.16.11.103"
TSR4="172.16.11.104"
TSR5="172.16.11.105"
TSR6="172.16.11.106"
TSR7="172.16.11.107"
TSR8="172.16.11.108"
TSR9="172.16.11.109"
TSR10="172.16.11.110"
TSR11="172.16.11.111"
TSR12="172.16.11.112"
TSR13="172.16.11.113"
TSR14="172.16.11.114"
TSR15="172.16.11.115"
TSR16="172.16.11.116"
TSR17="172.16.11.117"
TSR18="172.16.11.118"
TSR19="172.16.11.119"
TSR20="172.16.11.120"
TSR21="172.16.11.121"
TSR22="172.16.11.122"
TSR23="172.16.11.123"
TSR24="172.16.11.124"
TSR25="172.16.11.125"
TSR26="172.16.11.126"
TSR27="172.16.11.127"
TSSW1="172.16.11.128"
TSSW2="172.16.11.129"
TSSW3="172.16.11.130"
CFGR1="172.16.11.201"
CFGR2="172.16.11.202"
CFGR3="172.16.11.203"
CFGR4="172.16.11.204"
CFGR5="172.16.11.205"
CFGR6="172.16.11.206"
CFGR7="172.16.11.207"
CFGR8="172.16.11.208"
CFGR9="172.16.11.209"
CFGR10="172.16.11.210"
CFGR11="172.16.11.211"
CFGR12="172.16.11.212"
CFGR13="172.16.11.213"
CFGR14="172.16.11.214"
CFGR15="172.16.11.215"
CFGR16="172.16.11.216"
CFGR17="172.16.11.217"
CFGR18="172.16.11.218"
CFGR19="172.16.11.219"
CFGR20="172.16.11.220"
CFGR21="172.16.11.221"
CFGR22="172.16.11.222"
CFGR23="172.16.11.223"
CFGR24="172.16.11.224"
CFGR25="172.16.11.225"
CFGSW1="172.16.11.226"
CFGSW2="172.16.11.227"
CFGSW3="172.16.11.228"
CFGSW4="172.16.11.229"
CFGSW5="172.16.11.230"

rack=$SECTION$DEVICE
expect << EOF
spawn telnet ${!rack} $PORT 
expect -re "$SECTION-$DEVICE#"
send "terminal length 0\r"
expect -re "$SECTION-$DEVICE#"
send "$TORUN\r"
expect -re "$SECTION-$DEVICE#"
send "exit\r"
EOF
echo ""
