*** Settings ***
Library    SeleniumLibrary   
Resource    ../web.resource
Resource    vkontakte.resource
Test Setup    web.Precondition: Open Browser And Maximize    site_url=https://vk.com/   browser=chrome
Test Teardown    web.Postcondition: Close Browser
Test Timeout    1m





*** Test Cases ***
Standart Login Vkontakte
    [Documentation]    Авторизоваться на сайте вконтакте
    
    vkontakte.Input Login
    vkontakte.Click Btn OK Login
    vkontakte.Click Btn Others
    vkontakte.Click Btn Password
    vkontakte.Input Password        
    vkontakte.Click Btn OK Password






    
