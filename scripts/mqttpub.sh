#!/usr/bin/env bash

while IFS=' ' read -r topic msg; do
    # mqtt pub -h 192mosquitto_pub.168.1.200 --topic "$topic" -m "$msg"
    mosquitto_pub -h 192.168.1.200 -t "$topic" -m "$msg"
    #  echo "$topic $msg" &&
# done < ~/Desktop/Leia_TisthammerBothersHomeSouth80-mqttLogger-2022-04-26T18_38_02_156Z.data
# done < ~/Desktop/leia_tryTablet-mqttLogger-2022-05-03T14_58_03_983Z.data
done < ~/Desktop/leia_wolfs-mqttLogger-2022-05-07T19_16_47_573Z.data.log
