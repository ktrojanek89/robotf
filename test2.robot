***Settings***
Library   SSHLibrary

***variables***
${REMOTE_HOST}   localhost
${REMOTE_USERNAME}   tester01
${REMOTE_PASSWORD}   karolina

***Test Cases***
PrzypadekTestowy2
   otwórz terminal
   wypisz polecenie i sprawdz poprawnosc

***Keywords***
otwórz terminal
   Open Connection   ${REMOTE_HOST}
   Login   ${REMOTE_USERNAME}   ${REMOTE_PASSWORD}
wypisz polecenie i sprawdz poprawnosc
   ${rc}=   Execute Command   uname -a
   Should Contain   ${rc}   Linux tester 3.10.0-327.36.1.el7.x86_64
