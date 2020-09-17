#!/bin/sh


# get latest binary
cd koolproxy/koolproxy/
mkdir -p data
mkdir -p data/rules
wget https://raw.githubusercontent.com/houzi-/CDN/master/binary/v3.8.5/arm
if [ "$?" == "0" ];then
	mv arm koolproxy && chmod +x koolproxy
else
	rm arm
fi


#get latest rules
cd data/rules
rm -rf *
wget --no-check-certificate https://raw.githubusercontent.com/houzi-/CDN/master/koolproxy.txt
wget --no-check-certificate https://raw.githubusercontent.com/houzi-/CDN/master/daily.txt
wget --no-check-certificate https://raw.githubusercontent.com/houzi-/CDN/master/kp.dat
wget --no-check-certificate https://raw.githubusercontent.com/houzi-/CDN/master/user.txt
