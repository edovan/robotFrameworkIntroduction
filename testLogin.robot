**** settings ***
Documentation   Primo test di prova per il collauodo di RobotFRM

Library   SeleniumLibrary

*** Variables ***
${URL}          https://www.saucedemo.com
${USER_NAME}    standard_user
${PASSWORD}     secret_sauce

*** Test Case ***
Test Login
  ## Prerequisito
  Apri il sito alla pagina di login
  Immetti user name
  Immetti user password
  ## Action
  Pigia login

  # Verifca

  #url  ==> https://www.saucedemo.com/inventory.html
  # ${url}=   get location
  # Should Be Equal  ${url}  https://www.saucedemo.com/inventory.html

  # in forma più concisa
  #Location Should Be  https://www.saucedemo.com/inventory.html

  #contenuto   ==> Products
  # Page Should contain  Products
  # Page Should contain Element  xpath://div[@class='product_label']
  # Page Should contain Element  xpath://div[@id='inventory_container']
  # Page Should contain Element  id:inventory_container
  Verifica url
  Verifica presenza prodotti


*** Keyword ***

Apri il sito alla pagina di login
  Open Browser  ${URL}  chrome

Immetti user name
  Input Text    id:user-name    ${USER_NAME}

Immetti user password
  Input Text    id:password     ${USER_PASSWORD}

Pigia login
  Click Button  id:login-button

Verifica url
  Location Should Be  ${URL}/inventory.html

Verifica presenza prodotti
  Page Should contain Element  id:inventory_container
