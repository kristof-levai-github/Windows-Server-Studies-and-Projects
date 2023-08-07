@echo off

dsadd ou "ou=Marketing, dc=vallalat, dc=hu"
dsadd ou "ou=TavoliIroda, dc=vallalat, dc=hu"
dsadd ou "ou=IT, dc=vallalat, dc=hu"

dsadd group "cn=marketingGP,ou=Marketing, dc=vallalat, dc=hu"
dsadd group "cn=irodaGP,ou=TavoliIroda, dc=vallalat, dc=hu"
dsadd group "cn=iTeam, ou=IT, dc=vallalat, dc=hu"

rem ez lesz a felhasznalok jelszava
set pass=Magik1908

sethu enableextensions enabledelayedexpansion
FOR /L %%A IN (1,1,9) DO (

    dsadd user "CN=mark%%A, OU=Marketing, dc=vallalat,dc=hu" -pwd %pass% -pwdneverexpires yes -samid mark%%A -upn mark%%A -memberof "cn=marketingGP, ou=Marketing, dc=vallalat, dc=hu"
    dsmod user "CN=mark%%A, OU=Marketing, dc=vallalat,dc=hu" -disabled no

    dsadd user "CN=iroda%%A, OU=TavoliIroda, dc=vallalat,dc=hu" -pwd %pass% -pwdneverexpires yes -samid iroda%%A -upn iroda%%A -memberof "cn=irodaGP, ou=TavoliIroda, dc=vallalat, dc=hu"
    dsmod user "CN=iroda%%A, OU=TavoliIroda, dc=vallalat,dc=hu" -disabled no

    dsadd user "CN=info%%A, OU=IT, dc=vallalat,dc=hu" -pwd %pass% -pwdneverexpires yes -samid info%%A -upn info%%A -memberof "cn=iTeam, ou=IT, dc=vallalat, dc=hu"
    dsmod user "CN=info%%A, OU=IT, dc=vallalat,dc=hu" -disabled no
    
)
endhu