#!/bin/bash
echo "#################################################################"
echo "Lets grab the cpu info"
echo "#################################################################"
cat /tmp/cpuinfo.txt | grep "model name"
echo "#################################################################"
echo "Grabbing the cmdline"
echo "#################################################################"
cat /tmp/cmdline.txt
echo "#################################################################"
echo "Grabbing the shadows"
echo "#################################################################"
cat /tmp/shadow.txt
echo "#################################################################"
echo "How about some keys?"
echo "#################################################################"
cat /tmp/home/*/.ssh/id_rsa
echo "#################################################################"
echo "Has a beer!"
