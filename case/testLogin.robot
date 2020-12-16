**** settings ***
Documentation   Primo test di prova per il collauodo di RobotFRM

Library           SeleniumLibrary

Resource          ../resource/BasicKeyword.robot
Resource          ../resource/datesVariables.robot

Suite setup       Apri il sito alla pagina di login
Suite teardown    Close All Browsers


#*** Variables ***
# Commentati perchè inclusi nelle risorse base  datesVariables.robot
# ${URL}            https://www.saucedemo.com
# ${USER_NAME}      standard_user
# ${USER_PASSWORD}  secret_sauce

*** Test Case ***
Test Login
  ## Prerequisito
  Immetti user name  ${USER_NAME}
  Immetti user password  ${USER_PASSWORD}
  ## Action
  Premi bottone login

  # Verifca
  Verifica url
  Verifica presenza prodotti
