# Shell script for file compression

This set of script compress a helloWorld.txt file.

I can run this script anywhere using this command
```
sh compress.sh
```

- compress.sh
    - This script stores an absolute path of the folder that store helloWorld.txt, an absolute path of the destination directory, compress the folder into a zip file. This compressed zip file is named with a timestamp.

- compress_take_arguments.sh
    - This script allows me to do pass 3 arguments to execute the file compression
        - 1st argument: an absolute path of the file or folder that I want to compress
        - 2nd argument: an absolute path of the destination directory of the compressed zip file
        - 3rd argument: name of the zip file <br>
        e.g. <br> `sh /home/fan/Desktop/my_repos/shell-scripts/file_compression/helloWorld /home/fan/Desktop/my_repos/shell-scripts/file_compression/ compress_please` <br>
        - The resulted file has the name `compress_please_20230618_154648.zip`