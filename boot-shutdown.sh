#!/bin/bash

#
# Author: Vincenzo D'Amore v.damore@gmail.com
# 20/11/2014
#

function shutdown()
{
  echo "$(date) $(whoami) Received a signal to shutdown"

  # Empty dns list in case it has 127.0.0.1 for pihole.
  networksetup -setdnsservers Wi-Fi Empty
  echo "The DNS list is cleared."

  exit 0
}

function startup()
{
  echo "$(date) $(whoami) Starting..."

  # INSERT HERE THE COMMAND YOU WANT EXECUTE AT STARTUP

  tail -f /dev/null &
  wait $!
}

trap shutdown SIGTERM
trap shutdown INT  # To test with ctrl C

startup;

