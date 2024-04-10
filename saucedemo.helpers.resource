*** Settings ***
Library    SeleniumLibrary

*** Variables ***
${inputUsername}    id:user-name
${inputPassword}    id:password
${buttonLogin}      id:login-button
${validation}       id:inventory_container

*** Keywords ***
SetupBrowser
    [Arguments]    ${url}    ${browser}
    Open Browser    ${url}    ${browser}    options=add_argument("--incognito");add_argument("--headless")
    Maximize Browser Window

TypeUsername
    [Arguments]    ${username}
    Wait Until Element Is Visible    ${inputUsername}
    Input Text    ${inputUsername}    ${username}

TypePassword
    [Arguments]    ${password}
    Wait Until Element Is Visible    ${inputPassword}
    Input Text    ${inputPassword}    ${password}

ClickLogIn
    Wait Until Element Is Visible    ${buttonLogin}
    Click Element    ${buttonLogin}

ValidateHomepage
    Wait Until Element Is Visible    ${validation}