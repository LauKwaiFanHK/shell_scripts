- match_and_return_emails_using_regex.sh
    - This script take a file path as argument, run the following command to execute the script:

        `sh match_and_return_emails_using_regex.sh sample_text.txt`
    - Make sure the passed file is committed to git, running the script 
        - execute `git blame -e` to the file
        - find all email addresses in the output from the above git command
        - print these email addresses in terminal 