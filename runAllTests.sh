#!/bin/bash
# @author: Diego Wildenstein
# This script is used to run through all of my radiation tests
# in a row. It was developed for running overnight at the
# LANSCE ICE1 neutron beam.

# Since the L1 and MMB static tests require the beam to be
# switched on and off repeatedly, this script is only for
# testing the dynamic tests.

# The number of iterations for each test we want to perform.
# For the dynamic tests, each iteration takes about a second.
NUM_ITERS=5
NUM_TEST_ITERS=1000
mkdir -p ./RAT_logs

#LOGNAME="logRunAllTests_`date +%m-%d-%y_%H-%M`.txt"

# ------------ L1 DYNAMIC -----------------
mkdir -p ./RAT_logs/l1_dynamic
for ((i=1; i<=$NUM_ITERS; i++))
do
    date
    # Set a new logname for this test
    TEST_LOGNAME="RAT_l1_dynamic_${i}_`date +%m-%d-%y_%H-%M`.txt"
    echo "Starting l1_dynamic test." | tee -a $TEST_LOGNAME
    echo "Iteration ${i} of ${NUM_ITERS}" | tee -a $TEST_LOGNAME
    echo "Running test with ${NUM_TEST_ITERS} iterations" | tee -a $TEST_LOGNAME
    ./l1_dynamic/build/debug/gsi_l1_dynamic_test $NUM_TEST_ITERS | tee -a $TEST_LOGNAME
    mkdir -p ./RAT_logs/l1_dynamic/$i
    mv log* ./RAT_logs/l1_dynamic/$i
    # Reboot card
    echo "Rebooting card." | tee -a $TEST_LOGNAME
    ledag-ssh <<< "connect 0" "card_reboot" | tee -a $TEST_LOGNAME
    mv $TEST_LOGNAME ./RAT_logs/l1_dynamic/$i
    #sleep 5m
    echo "L1 dynamic test complete"
done
echo "All L1 dynamic tests complete"


# ------------ MMB DYNAMIC ----------------------
mkdir -p ./RAT_logs/mmb_dynamic
for ((i=1; i<=$NUM_ITERS; i++))
do
    date
    # Set a new logname for this test
    TEST_LOGNAME="RAT_mmb_dynamic_${i}_`date +%m-%d-%y_%H-%M`.txt"
    echo "Starting mmb_dynamic test." | tee -a $TEST_LOGNAME
    echo "Iteration ${i} of ${NUM_ITERS}" | tee -a $TEST_LOGNAME
    echo "Running test with ${NUM_TEST_ITERS} iterations" | tee -a $TEST_LOGNAME
    ./mmb_dynamic/build/debug/gsi_mmb_dynamic_test $NUM_TEST_ITERS | tee -a $TEST_LOGNAME
    mkdir -p ./RAT_logs/mmb_dynamic/$i
    mv log* ./RAT_logs/mmb_dynamic/$i
    # Reboot card
    echo "Rebooting card." | tee -a $TEST_LOGNAME
    ledag-ssh <<< "connect 0" "card_reboot" | tee -a $TEST_LOGNAME
    mv $TEST_LOGNAME ./RAT_logs/mmb_dynamic/$i
    #sleep 5m
    echo "MMB dynamic test complete"
done

echo "All tests Complete!!"
