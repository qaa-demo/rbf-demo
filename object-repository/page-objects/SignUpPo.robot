*** Settings ***
Resource    ../locators/SignupPageLocators.robot
Resource    CommonPo.robot


# *** Keywords ***
# Sign up [Arguments] ${username} ${password}
#     [Documentation]
# 	...  Sign up with username and password  ...
    
#     Open Browser To Sign up Page
#     Submit Sign up Information [Arguments] ${username} ${password}
#     Click Element [Arguments] ${loginButton} ${SMALL_RETRY_COUNT}
#     User Should See An Alert With The Success Message

# User Should See An Alert With The Success Message [Arguments] ${successMessage}
#     [Documentation]
# 	...  User should see an alert with the success message on the browser  ...

#     Alert Should Be Present    ${successMessage}