*** Settings ***
Documentation    Общие кейворды для всех тестов
Library    SeleniumLibrary

*** Keywords ***

Precondition: Open Browser And Maximize
    [Documentation]    Предусловие: открыть браузер на весь экран
    [Arguments]    ${site_url}    ${browser}
    Open Browser    url=${site_url}   browser=${browser}
    Maximize Browser Window

Postcondition: Close Browser
    [Documentation]    Закрыть браузер
    Sleep    time_=5s
    Close Browser