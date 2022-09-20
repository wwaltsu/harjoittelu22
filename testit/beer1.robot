*** Settings ***
Library  RequestsLibrary

*** Variables ***
${API_BASE_URL}=   https://api.punkapi.com/v2/
${API_BEERS_URL}=  beers/

*** Test Cases ***
Get the first beer
  ${resp}=  GET  ${API_BASE_URL}${API_BEERS_URL}1/
  Log  ${resp}

Get random beer
   ${resp}=  GET  ${API_BASE_URL}${API_BEERS_URL}random/
   Log  ${resp}

Get Rabiator named beer
   ${resp}=  GET  ${API_BASE_URL}rabiator/
   Log  ${resp}

Get beers with Hersbrucker hopps
    ${resp}=  GET  ${API_BASE_URL}beer_name=Hersbrucker/
   Log  ${resp}