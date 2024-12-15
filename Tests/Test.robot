*** Settings ***
Documentation  API Testing in Robot Framework
Library  SeleniumLibrary
Library  RequestsLibrary
Library  JSONLibrary
Library  Collections

*** Variables ***
${list}  item1  item2  item3

*** Test Cases ***


Create a dictionary and iterate it
    [documentation]  This test case verifies the dictionary values

    [tags]  Regression
    ${address} =  Create Dictionary  street=123 main street  city=Bhopal  State=MP 
    ${person} =  Create Dictionary  name=adi  jobtitle=PC  age=30  address=${address}

    log  ${person}
    FOR  ${key}  ${value}  IN  &{person}
    Log  key=${key}, value=${value}
    END


Create a list and iterate it

    FOR  ${item}  IN  ${list}
    Log  ${item}
# Perform other actions on ${item}
    END

*** Keywords ***