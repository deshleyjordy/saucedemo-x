*** Settings ***
Resource    saucedemo.helpers.resource
    
*** Variables ***
${url}              https://www.saucedemo.com/
${browser}          chrome
${username}         standard_user
${password}         secret_sauce

*** Keywords ***
The user opens a browser
    SetupBrowser    ${url}    ${browser}

The user logs in with a username and password
    TypeUsername    ${username}
    TypePassword    ${password}
    ClickLogIn

The user is logged in and products are shown
    ValidateHomepage