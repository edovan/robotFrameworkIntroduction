*** settings ***
resource     login-page.robot
*** Keyword ***

Apri il sito alla pagina di login
  Open Browser  ${URL}  chrome

Immetti user name
  [Arguments]  ${user_name}
  Input Text    ${user_locator}    ${user_name}

Immetti user password
  [Arguments]  ${password}
  Input Text    ${passwd_locator}     ${password}

Premi bottone login
  Click Button  ${formsubmit_locator}

Verifica url
  Location Should Be  ${URL}/inventory.html

Verifica presenza prodotti
  Page Should contain Element  id:inventory_container


Get CDO Status
  [Arguments] ${console_id}
  Get Web element  xpath://td/*[text()='${console_id}']/../../td[6]
