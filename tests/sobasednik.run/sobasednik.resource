
*** Settings ***
Documentation    Кейворды для сайта sobasednik.run
Resource    ../web.resource
Resource    ../../locators/sobasednik_lc.resource

*** Keywords ***


Click Btn Blog
    [Documentation]    Нажимаем кнопку "Блог Джесси"

    Wait Until Element Is Visible    locator=${TO_BLOG_LANDING_BTN}   timeout=10s
    Click Element                    locator=${TO_BLOG_LANDING_BTN} 

Click Btn Continue Reading
    [Documentation]    Нажимаем кнопку "Continue reading"

    Wait Until Element Is Visible    locator=${TO_BLOG_SECOND_PAGE_BTN}       timeout=10s
    Click Element                    locator=${TO_BLOG_SECOND_PAGE_BTN}  

    Wait Until Element Is Visible    ${WAIT_ELEMENT} 