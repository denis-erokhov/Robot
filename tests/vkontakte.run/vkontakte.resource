
*** Settings ***
Documentation    Кейворды для сайта vkontakte.run
Resource    ../web.resource
Resource    ../../locators/vkontakte_locators.resource


*** Keywords ***

Input Login
    Input Text    locator=//input[@name="login"]    text=${LOGIN}    # Если мы записываем наши переменные в окружение,
                                                                     # тогда пишем text=%{LOGIN}
Click Btn OK Login
    Click Button   locator=//button[@type="submit"]

Click Btn Others
    Sleep     time_=5s
    Click Button    locator=//button[@data-test-id="other-verification-methods"]

Click Btn Password
    [Documentation]    Вводим пароль
    Wait Until Element Is Visible    locator=//span[text()="Пароль"]    timeout=5s
    Click Element    locator=//span[text()="Пароль"]

Input Password
    Wait Until Element Is Visible    locator=//input[@name="password"]    timeout=5s
    Input Text     locator=//input[@name="password"]    text=${PASSWORD}    

Click Btn OK Password
    Sleep    time_=3s
    Click Element    locator=//span[text()="Продолжить"]



