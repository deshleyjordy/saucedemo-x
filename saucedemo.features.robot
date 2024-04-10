*** Settings ***
Resource    saucedemo.steps.robot

*** Test Cases ***
Scenario: A user logs in with valid credentials
    Given The user opens a browser
    When The user logs in with a username and password
    Then The user is logged in and products are shown