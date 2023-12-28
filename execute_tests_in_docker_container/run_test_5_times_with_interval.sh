#!/bin/sh

# Run the command npm test 5 times, with a 10 seconds delay between each execution.
for i in $(seq 5); do
  npm test
  echo "Test executed with 10 seconds interval: ${i}"
  sleep 10
done