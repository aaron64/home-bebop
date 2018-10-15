
RUNNING=true
ERROR_TEXT=""
TEST_NAME=""

function sendError {
	./sendMessage.sh "Error testing $TEST_NAME: $ERROR_TEXT"
}

function runTest {
	echo "-----------------------"
	TEST_NAME=$1
	echo "Testing: $TEST_NAME"
	. ./tests/test${TEST_NAME}.sh || sendError
}


while [ $RUNNING == true ]
do
	runTest Ein		
	runTest Internet
	# runTest PiHole
	sleep 300
done
