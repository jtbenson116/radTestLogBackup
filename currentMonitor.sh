#!/bin/bash

NUM_ITERS=20
LOGNAME="log_CurrVoltPwr_`date +%m-%d-%y_%H-%M`.txt"


echo "Starting current test..." | tee -a $LOGNAME
for ((i=1; i <= $NUM_ITERS; i++))
do
    echo "Iteration $i of $NUM_ITERS" | tee -a $LOGNAME
    ledag-ssh "connect 0" "mon_brd 0 1" | tee -a $LOGNAME
done
echo "Test complete." | tee -a $LOGNAME

