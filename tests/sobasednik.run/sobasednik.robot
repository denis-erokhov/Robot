*** Settings ***
Library           SeleniumLibrary
Resource          sobasednik.resource
Test Setup        web.Precondition: Open Browser And Maximize    site_url=https://guru.qahacking.ru/    browser=chrome
Test Teardown     web.Postcondition: Close Browser
Test Timeout      1m


*** Test Cases ***
Sobasednik click store
    [Documentation]    Перейти на вторую страницу блога с главной страницы
    
    sobasednik.Click Btn Blog
    sobasednik.Click Btn Continue Reading
    
