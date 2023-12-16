#!/bin/bash

# Copyright (C) 2022, GSI Technology, Inc. All rights reserved.
#
# This software source code is the sole property of GSI Technology, Inc.
# and is proprietary and confidential.
#

lab_name="l1_serr"
lab_number=5

if [[ "$#" -ne 2 ]]; then
	echo Error: expecting 2 arguments of user_name and apu_server
	echo "usage:"
	echo "  $0 user_name apu_server"

	echo "examples:"
	echo "	$0 apu_edu_1 192.168.99.32"
	echo "	$0 apu_edu_2 192.168.99.32"
	exit 1
fi

user_name=$1
apu_server=$2

echo Info: copy files for lab_name \"${lab_name}\" to apu_server ${apu_server}
cd $(dirname $0)
scp gsi_device_${lab_name}_app.c     ${user_name}@${apu_server}:~/asplos/lab${lab_number}-${lab_name}/.
scp dev_src/gsi_device_${lab_name}.c ${user_name}@${apu_server}:~/asplos/lab${lab_number}-${lab_name}/dev_src/.
