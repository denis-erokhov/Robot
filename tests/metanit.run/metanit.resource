*** Settings ***
Documentation    Кейворды для metanit.run

Resource    ../web.resource
Resource    ../../locators/metanit_lc.resource




*** Keywords ***

Click Btn Python
    [Documentation]    Кликаем на кнопку Python
    Wait Until Page Contains Element    locator=${TO_PAGE_PYTHON_BTN}    timeout=10s
    Click Element    locator=${TO_PAGE_PYTHON_BTN}

Click Btn DB Python
    [Documentation]    Скролим вниз и Кликаем на кнопку база данных Python
    Scroll Element Into View    locator=${TO_SCROLL_PAGE_DATA_SQL}
    Wait Until Element Is Enabled    locator=${TO_PAGE_DB_BTN}     timeout=10s
    Click Element    locator=${TO_PAGE_DB_BTN} 

Click Btn Main SQLite
    [Documentation]    Кликаем на кнопку основные операции SQLite
    Wait Until Element Is Visible    locator=${TO_PAGE_DATA_SQL_BTN}    timeout=10s
    Click Element    locator=${TO_PAGE_DATA_SQL_BTN}
