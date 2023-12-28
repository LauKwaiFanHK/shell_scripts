- This project includes 
    - one function `sayHello` written in JavaScript (sayHello.js)
    - one unit test to test the above function using Jest as testing framework (sayHello.test.js)
        - To execute the unit test, run
            `npm test`

- The following scripts
    - `run_test.sh` 
        - automate executing tests in this directory `execute_tests_in_docker_container`
        - to execute this script, run
            `sh run_test.sh`
        - "Test executed!" will be printed in terminal after the test execution is completed.
    - `run_test_every_10_seconds.sh`
        - automate executing tests in this directory every 10 seconds
        - to execute this script, run
            `sh run_test_every_10_seconds.sh`
        - "Test executed: <number of execution>" will be printed in terminal after every test execution.
    - `run_test_5_times_with_interval.sh`
        - automate executing tests in this directory for 5 times every 10 seconds
        - to execute this script, run
            `sh run_test_5_times_with_interval.sh`
        - "Test executed with 10 seconds interval: <number of execution>"
