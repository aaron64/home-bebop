
RUNNING=true
ERROR_TEXT=""
TEST_NAME=""

sendError() {
	./sendMessage.sh "Error testing $TEST_NAME: $ERROR_TEXT"
}

runTest() {
	TEST_NAME=$1
	echo "Testing: $TEST_NAME"
	. ./tests/test${TEST_NAME}.sh || sendError
}


while [ $RUNNING == true ]
do
	runTest Ein		
	runTest PiHole
	sleep 600
done
