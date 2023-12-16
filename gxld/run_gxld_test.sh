#!/bin/bash
# @author: Diego Wildenstein
# This script will be used to call the GXLD similarity search
# application multiple times during the radiation test.

# Note that any errors caught by the gxld test will go to the
# APU log files, which will be put into the devLogs folder.

# NUM_ITERS will set the number of times we want to run the GXLD app.
# QUERIES will set the number of queries that the GXLD kNN search will
# look for. We can crank this up to at least 500 and still get solid
# performance, we might be able to go even higher.
NUM_ITERS=30
QUERIES=500
LOGNAME="log_`date +%m-%d-%y_%H-%M`.txt"
# Make the devLogs folder if it doesn't already exist
mkdir -p ./devLogs
# For all commands after this point, we pipe them to tee -a,
# which lets us save the output to a log file and still output
# to the screen at the same time.


echo "Starting GXLD test..." | tee -a $LOGNAME
for ((i=1; i<=$NUM_ITERS; i++))
do
    # Display iter number and date
    echo "Iteration $i of $NUM_ITERS" | tee -a $LOGNAME
    date | tee -a $LOGNAME
    
    # Run the actual GXLD test with standard params
    ./gxld -t=4 -f=192 -q=$QUERIES -r=32768 -b=256 -k=64 -g=32 | tee -a $LOGNAME  

    # This line will save the APU device logs to a file. It will
    # take a minute, so we may want to only do this once at the end.
    # We may need to do it here since I don't know how much these
    # logs actually capture.
    #ledag-ssh <<< "connect 0" "flf" | tee -a $LOGNAME
    #cp /tmp/slot0*.log.tar.gz ./devLogs | tee -a $LOGNAME
done

# save the device log files to a tar
ledag-ssh <<< "connect 0" "flf" | tee -a $LOGNAME
# by default, those tars go to /tmp/, so lets move them over.
# We can use either cp or mv, but since /tmp/ is write protected
# we will need to sudo this script if we want to use mv.
cp /tmp/slot0*.log.tar.gz ./devLogs | tee -a $LOGNAME

echo "Test complete." | tee -a $LOGNAME

