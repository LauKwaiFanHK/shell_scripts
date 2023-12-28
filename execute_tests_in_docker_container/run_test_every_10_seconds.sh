#!/bin/sh

# In an infinite loop, execute the command npm test every 10 seconds.
# Press ctrl C to stop the script. 
COUNT=1
while true
do
  npm test
  echo 'Test executed: ' $COUNT
  COUNT=$((COUNT + 1))
  sleep 10
done

