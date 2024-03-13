#!/bin/bash
#This is a disk configuration report script that lists mounted filesystems, partition config, and LVM config.

FILENAME=`hostname`
echo "Disk config report saved to file: $FILENAME.report"

echo -e "\n Mounted Filesystems: \n\n" >>$FILENAME.report
df -hT | grep -v tmp >>$FILENAME.report

echo -e "\n\n Partition Configuration: \n\n" >>$FILENAME.report
fdisk -l | head -17 >>$FILENAME.report

echo -e "\n\n LVM Configuration: \n\n" >>$FILENAME.report
lvscan >>$FILENAME.report
