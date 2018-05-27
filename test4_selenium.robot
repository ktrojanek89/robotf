***Settings***
Library   Selenium2Library

***variables***
${BROWSER}   Firefox
${VALID USER}   testerwsb_t1
${VALID PASSWORD}   adam1234
${LOGIN URL}   https://profil.wp.pl/login.html?zaloguj=poczta
${xu}   //*[@id="login"]
${xp}   //*[@id="password"]
${xb}   //*[@id="btnSubmit"]

***Test Cases***
Test1
   Otwórz przeglądarkę na stronie logowania
   Wpisz użytkownika
   Wpisz hasło
   Kliknij i zaloguj się
   Sprawdz czy zalogowany
   Zamknij przeglądarkę

***Keywords***
Otwórz przeglądarkę na stronie logowania
   Open Browser   ${LOGIN URL}   ${BROWSER}
Wpisz użytkownika
   Input text   ${xu}  ${VALID USER}
Wpisz hasło
   Input text   ${xp}   ${VALID PASSWORD}
Kliknij i zaloguj się
   Click button   ${xb}
Sprawdz czy zalogowany
   Page Should Contain   Odebrane
Zamknij przeglądarkę
   Close All Browsers
