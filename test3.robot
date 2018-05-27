***Settings***
Library   SSHLibrary

***variables***
${REMOTE_HOST}   localhost
${REMOTE_USERNAME}   tester01
${REMOTE_PASSWORD}   karolina

***Test Cases***
PrzypadekTestowy3
   otwórz terminal
   wypisz polecenie i sprawdz poprawnosc
PrzypadekTestowy4
   otwórz terminal
   wypisz polecenie i sprawdz poprawnosc2

***Keywords***
otwórz terminal
   Open Connection   ${REMOTE_HOST}
   Login   ${REMOTE_USERNAME}   ${REMOTE_PASSWORD}
wypisz polecenie i sprawdz poprawnosc
   ${rc}=   Execute Command   uname -a
   Should Contain   ${rc}   Linux tester
wypisz polecenie i sprawdz poprawnosc2
   ${rc}=   Execute Command   uname -a
   Should Not Contain   ${rc}   Kotek
