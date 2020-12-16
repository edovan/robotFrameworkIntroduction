**** settings ***
Documentation   Primo test data driven per il collauodo di RobotFRM

Library           SeleniumLibrary

Resource          ../resource/datesVariables.robot
Resource          ../resource/BasicKeyword.robot

Test setup       Apri il sito alla pagina di login
Test teardown    Close All Browsers

Test Template    Do Login


#*** Variables ***
# Commentati perchè inclusi nelle risorse base  datesVariables.robot
# ${URL}            https://www.saucedemo.com
# ${USER_NAME}      standard_user
# ${USER_PASSWORD}  secret_sauce

*** Test Case ***
standard_user               standard_user               ${USER_PASSWORD}
locked_out_user             locked_out_user             ${USER_PASSWORD}
problem_user                problem_user                ${USER_PASSWORD}
performance_glitch_user     performance_glitch_user     ${USER_PASSWORD}


*** Keyword ***
Do Login
  [Arguments]  ${username}  ${password}
  ## Prerequisito
  Immetti user name  ${username}
  Immetti user password  ${password}
  ## Action
  Premi bottone login

  # Verifca
  Verifica url
  Verifica presenza prodotti
