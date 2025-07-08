# Answer 


## Requirement

Requirements file contains libraries to use in the project. but first things project require python and pip 
(package management system used to install and manage software packages) version as below :

  - [Python 3.9](https://www.python.org/downloads/release/)
  - [PIP](https://pypi.org/project/pip/)

If the project have a new external library, It should be in the requirements file.

```shell
pip install -r requirements.txt
```
  
## Usage run robot

First,, Select test scripts to run with below command.

Example

Case run all testcase in project.
```shell
robot --nostatusrc -L TRACE:DEBUG -d results -v headless:False -i all tests
```