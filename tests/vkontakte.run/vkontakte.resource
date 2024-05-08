
*** Settings ***
Documentation    Кейворды для сайта vkontakte.run
Resource    ../web.resource



*** Keywords ***

Input Login
    Input Text    locator=//input[@name="login"]    text=%{LOGIN}
    
Click Btn OK Login
    # Wait Until Element Is Visible    locator=(//span[@class="FlatButton__content"])[4]  timeout=10s
    Click Button   locator=//button[@type="submit"]

Click Btn Others
    Wait Until Element Is Visible    locator=//div[@class="vkc__AuthRoot__wrapper"]    timeout=10s
    Click Button    locator=//button[@data-test-id="other-verification-methods"]

Input Password
    Wait Until Element Is Visible    locator=//input[@name="password"]    timeout=10s
    Input Password     locator=//input[@name="password"]    password=%{PASSWORD}    

Click Btn OK Password
    Wait Until Element Is Visible    locator=//span[text()="Продолжить"]    timeout=10s
    Click Button    locator=//span[text()="Продолжить"]



