***Settings***
Library   SSHLibrary

***variables***
${REMOTE_HOST}   localhost
${REMOTE_USERNAME}   tester01
${REMOTE_PASSWORD}   karolina

***Test Cases***
PrzypadekTestowy3a
   otwórz i wpisz na konsoli   wypisz tekst
PrzypadekTestowy3b
  otwórz i wpisz na konsoli   inny tekst
PrzypadekTestowy3c
   otwórz terminal
   wypisz polecenie i sprawdz poprawnosc
PrzypadekTestowy4
   otwórz terminal
   wypisz polecenie i sprawdz poprawnosc2

***Keywords***
otwórz i wpisz na konsoli
   [Arguments]   ${cos}
   log to console   ${cos}
otwórz terminal
   Open Connection   ${REMOTE_HOST}
   Login   ${REMOTE_USERNAME}   ${REMOTE_PASSWORD}
wypisz polecenie i sprawdz poprawnosc
   ${rc}=   Execute Command   uname -a
   Should Contain   ${rc}   Linux tester
wypisz polecenie i sprawdz poprawnosc2
   ${rc}=   Execute Command   uname -a
   Should Not Contain   ${rc}   Kotek
