#!/bin/bash
##LITTLE SPIN INTERFACE
sp='/-\|'
sc=0
spin() {
    printf "\b${sp:sc++:1}"
    ((sc==${#sp})) && sc=0
    sleep 0.1
}
endspin() {
    printf '\r%s\n' "$@"
    sleep 0.1
}

despertador() {
    time_now=$(date +%k%M)
    echo Now is: $time_now
    echo When you want to wake Up? HHmm, with no dots or spaces
    read time_wake_up

    while [ $time_now -ne $time_wake_up ]; do
      time_now=$(date +%k%M)
      spin
    done

    endspin
    google-chrome --app=https://www.youtube.com/watch?v=vXq0k07desIe
}

##Verification of chrome
hasChrome=$(google-chrome --version)
if echo "$hasChrome" | egrep '*not found*'
then
  echo You need to Install Chrome First
else
  despertador
fi
