*** Settings ***
Library    SeleniumLibrary   
Resource    metanit.resource
Test Setup    web.Precondition: Open Browser And Maximize    site_url=https://metanit.com/   browser=chrome
Test Teardown    web.Postcondition: Close Browser
Test Timeout    1m

*** Test Cases ***
Main Operation SQLite
    [Documentation]    Перейти на страницу с основными операциями с SQLite
    
    metanit.Click Btn Python
    metanit.Click Btn DB Python
    metanit.Click Btn Main SQLite