
RUNNING=true

runTests() {
	. ./tests/testEin
	. ./tests/testPiHole
}


while [ $RUNNING == true ]
do
	runTests		
	sleep 600
done
