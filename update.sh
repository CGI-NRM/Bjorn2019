#! /bin/sh

# This is the log that will be monitored. 
# If any changes occur to this, then take appropriate action.
MONITORED_DAT=data/rovbasedata.xlsx

# We will need this log to see whether any changes occured to /tmp/goreb.log
TEMP_DAT=/tmp/rovbasedata_old

# This is a 1-time command i.e. create the log file if it does nto exist.
[ ! -f $TEMP_DAT ] && touch -r $MONITORED_DAT $TEMP_DAT

[ $MONITORED_DAT -nt $TEMP_DAT ] && echo "$MONITORED_DAT is newer than $TEMP_DAT. Carry out your required operations"

# Update $TEMP_LOG with the new modified date of $MONITORED_LOG
touch -r $MONITORED_DAT $TEMP_DAT
