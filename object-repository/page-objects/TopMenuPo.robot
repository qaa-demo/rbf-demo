*** Settings ***
Resource   ../locators/TopMenuLocators.robot
Resource   CommonPo.robot


*** Variables ***
# ${HOME_PAGE_TITLE}      STORE
# ${CART_PAGE_TITLE}    STORE


*** Keywords ***
Navigates To Home Page
    [Documentation]
	...  Navigate to home page  ...
	
    ${homePageLocator}    Get Navigation Menu Item Locator By Name [Arguments] Home
    Click Element [Arguments] ${homePageLocator} ${SMALL_RETRY_COUNT}
    

Navigates To Contact Page
    [Documentation]
	...  Navigate to contact page  ...
	
    ${contactPageLocator}    Get Navigation Menu Item Locator By Name [Arguments] Contact
    Click Element [Arguments] ${contactPageLocator} ${SMALL_RETRY_COUNT}


Navigates To Sign up Page
    [Documentation]
	...  Navigate to sign up page  ...
	
    ${SignupPageLocator}    Get Navigation Menu Item Locator By Name [Arguments] Sign up
    Click Element [Arguments] ${SignupPageLocator} ${SMALL_RETRY_COUNT}   


Navigates To Cart Page
    [Documentation]
	...  Navigate to Cart page  ...
	
    ${CartPageLocator}    Get Navigation Menu Item Locator By Name [Arguments] Cart
    Click Element [Arguments] ${CartPageLocator} ${SMALL_RETRY_COUNT} 