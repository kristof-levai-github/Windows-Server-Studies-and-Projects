@echo off

dsadd ou "ou=Marketing, dc=suli, dc=local"
dsadd ou "ou=TavoliIroda, dc=suli, dc=local"
dsadd ou "ou=IT, dc=suli, dc=local"

dsadd group "cn=marketingGP,ou=Marketing, dc=suli, dc=local"
dsadd group "cn=irodaGP,ou=TavoliIroda, dc=suli, dc=local"
dsadd group "cn=iTeam, ou=IT, dc=suli, dc=local"

rem ez lesz a felhasznalok jelszava
set pass=Magik1908

setlocal enableextensions enabledelayedexpansion
FOR /L %%A IN (1,1,9) DO (

    dsadd user "CN=mark%%A, OU=Marketing, dc=suli,dc=local" -pwd %pass% -pwdneverexpires yes -samid mark%%A -upn mark%%A -memberof "cn=marketingGP, ou=Marketing, dc=suli, dc=local"
    dsmod user "CN=mark%%A, OU=Marketing, dc=suli,dc=local" -disabled no

    dsadd user "CN=iroda%%A, OU=TavoliIroda, dc=suli,dc=local" -pwd %pass% -pwdneverexpires yes -samid iroda%%A -upn iroda%%A -memberof "cn=irodaGP, ou=TavoliIroda, dc=suli, dc=local"
    dsmod user "CN=iroda%%A, OU=TavoliIroda, dc=suli,dc=local" -disabled no

    dsadd user "CN=info%%A, OU=IT, dc=suli,dc=local" -pwd %pass% -pwdneverexpires yes -samid info%%A -upn info%%A -memberof "cn=iTeam, ou=IT, dc=suli, dc=local"
    dsmod user "CN=info%%A, OU=IT, dc=suli,dc=local" -disabled no
    
)
endlocal