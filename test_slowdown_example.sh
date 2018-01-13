adb reverse tcp:4000 tcp:4000
adb reverse tcp:8000 tcp:8000
adb reverse tcp:8081 tcp:8081

adb shell am force-stop com.giftedexample
sleep 0.5
adb shell am start -n com.giftedexample/com.giftedexample.MainActivity > /dev/null
sleep 3

DELAY=0.1

function interact {
	echo $1
	echo "adb shell input" $2 $3 $4 $5 $6 $7 $8 $9 ${10}
	adb shell input $2 $3 $4 $5 $6 $7 $8 $9 ${10}
	sleep $DELAY
}

interact "Tap Input" tap 700 2300

for i in `seq 0 999`; do echo -n $i `date +%s`; /usr/bin/time adb shell input keyboard text "0123456789\ 0123456789\ " 2>&1 | cut -c 1-13 ; sleep 2.5; done
