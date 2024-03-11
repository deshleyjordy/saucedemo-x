*** Settings ***
Library    SeleniumLibrary

*** Variables ***
${url}              https://www.saucedemo.com/
${browser}          chrome
${username}         standard_user
${password}         secret_sauce

${inputUsername}    id:user-name
${inputPassword}    id:password
${buttonLogin}      id:login-button
${validation}       id:inventory_container


*** Test Cases ***
Scenario: A user logs in with valid credentials

    # Setup test
     Open Browser    ${url}    ${browser}    options=add_argument("--incognito")
     Maximize Browser Window

    Wait Until Element Is Visible    ${inputUsername}
    Wait Until Element Is Visible    ${inputPassword}
    Wait Until Element Is Visible    ${buttonLogin}

    # Input user data
    Input Text    ${inputUsername}    ${username}
    Input Text    ${inputPassword}    ${password}
    Click Element    ${buttonLogin}

    # Validate home page
    Wait Until Element Is Visible    ${validation}