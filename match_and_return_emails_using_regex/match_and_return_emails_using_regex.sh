# This script matches email address in text input returned from a git command.
# This script takes a file name and lines of code and return the first email address.

#!/bin/bash

# Define a function to extract email addersses from a given text
extract_email_addresses(){
    # Regular expression for matching email addresses
    EMAIL_REGEX="[a-zA-Z0-9._%+-]+@[a-zA-Z0-9.-]+\.[a-zA-Z]{2,}"

    # Use grep to extract a list of all emails in the text
    # flag -E (–extended-regexp: Use extended regular expression)
    # flag -o (–only-matching: Print email addresses only)
    grep -o -E $EMAIL_REGEX
}

# Define a function to execute git blame command and pass the output to the email extraction function
git_blame_and_extract_emails() {
    # Take first argument of this function and pass it to git blame execution
    # Pass the output of git blame to the extract_email_addresses function 
    git blame -e "$1" | extract_email_addresses
}

# Take the file path to execute git blame from terminal as argument and pass it to the function
EMAILS=$(git_blame_and_extract_emails "$1")

echo "$EMAILS"
