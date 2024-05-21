# Robot Framework Demo


## Prerequisites
1. [Python](https://www.python.org/downloads/ "Python").
2. Check Python installation

    `python -V`

3. Install [pip](https://pip.pypa.io/ "pip").

    `pip -V`

4. Install Robot Framework.

    `pip install robotframework`
    
5. Install Selenium Library.

    `pip install robotframework-seleniumlibrary`
    
6. Download and install VSCode [VSCode](https://code.visualstudio.com/docs/?dv=osx "VSCode").
7. Install `Robot Framework Language Server` by Robocort extension from VSCode's Marketplace
8. Install Browser Drivers 

    `pip install webdrivermanager`

## Example
Test cases for a sample web site [Demoblaze](https://testautomationpro.com/aut/).

This project is developed to demontrate Web UI automation using Robot Framework and Selenium Library.

Here, there are 3 variables `${SMALL_RETRY_SCALE}`, `${MEDIUM_RETRY_SCALE}` and `${LARGE_RETRY_SCALE}` for retrying the keywords when they are failing. Each variable has assigned with the number of retries. Automation engineers are advised to use `${SMALL_RETRY_SCALE}` as the default number of retries for the keywords. If there are big delays in some scenarios, you can use other variables `${MEDIUM_RETRY_SCALE}` and `${LARGE_RETRY_SCALE}`. You can find the examples for this in `object-repository/page-objects` directory.

Test cases are in `test-cases` directory and cover login functionality.

## File organization
```
|- rbf-demo/                                                      // Home folder for robot selenium UI automation project
  |- configs/ApplicationVariables.robot                           // Application common variables file
  |- configs/BrowserDetails.robot                                 // Test execution browser configurations
  |- configs/EnvDetails.robot                                     // Test execution environment configurations
  |- configs/SeleniumConfigs.robot                                // Selenium configurations
  |- object-repository/locators/*.robot                           // UI locators of the application
  |- object-repository/page-objects/CommonPo.robot                // Common keywords for the application
  |- object-repository/page-objects/*.robot                       // Page object keywords of the application
  |- test-cases/..../*.robot                                      // Test cases of the application
|- results                                                        // Test results will be saving here
|- .gitignore                                                     // Excluded the unnecessary files in the repo
|- README.md                                                      // This file
```

## Usage
Starting from Robot Framework 3.0, tests are executed from the command line
using the ``robot`` script or by executing the ``robot`` module directly
like ``python -m robot`` or ``jython -m robot``.

The basic usage is giving a path to a test (or task) file or directory as an
argument with possible command line options before the path

Run All Test Cases
```
python -m robot -v ENV:SIT -d results test-cases/
```
Run Test Cases tagged Smoke Test
```
python -m robot -v ENV:SIT -i Smoke -d results test-cases/LoginTest.robot
```
Run Test Cases tagged Regression Test
```
python -m robot -v ENV:SIT -i Regression -d results test-cases/LoginTest.robot
```



"***-v***" refers to the variables. To replace a declared value within the code, you can specify a variable name and value.

"***-i***" refers to the tags. To run only a selected group of tests, you may specify a tag name.

"***-d***" refers to the test results. The location to save the test results can be specified here.

Additionally there is ``rebot`` tool for combining results and otherwise
post-processing outputs

    rebot --name Example output1.xml output2.xml

Run ``robot --help`` and ``rebot --help`` for more information about the command
line usage. For a complete reference manual see [Robot Framework User Guide](https://robotframework.org/robotframework/latest/RobotFrameworkUserGuide.html "Robot Framework User Guide").
