# This script matches email address in text input returned from a git command.
# This script takes a file name and lines of code and return the first email address.

#!/bin/bash

# Define a function to extract email addersses from a given text
extract_email_addresses(){
    # Regular expression for matching email addresses
    EMAIL_REGEX="[a-zA-Z0-9._%+-]+@[a-zA-Z0-9.-]+\.[a-zA-Z]{2,}"

    # Use grep to find all matches in the text
    grep -o -E $EMAIL_REGEX
}

git_blame_and_extract_emails() {
    echo "$1"
    # Define a function to execute git blame command and pass the output to the email extraction function
    git blame "$1" | extract_email_addresses
}

EMAILS=$(git_blame_and_extract_emails "$1")

echo "$EMAILS"
