@echo off

dsadd ou "ou=Office, dc=mechwart, dc=local"
dsadd ou "ou=Marketing, ou=Office, dc=mechwart, dc=local"
dsadd ou "ou=TavoliIroda, ou=Office, dc=mechwart, dc=local"
dsadd ou "ou=IT, dc=mechwart, dc=local"

dsadd group "cn=marketing, ou=Marketing, ou=Office, dc=mechwart, dc=local"
dsadd group "cn=tavoliIroda, ou=TavoliIroda, ou=Office, dc=mechwart, dc=local"
dsadd group "cn=iTeam, ou=IT, dc=mechwart, dc=local"

rem ez lesz a felhasznalok jelszava
set pass=Magik1908

setlocal enableextensions enabledelayedexpansion

FOR /L %%A IN (1,1,9) DO (

    dsadd user "CN=mark%%A, OU=Marketing, ou=Office, dc=mechwart,dc=local" -pwd %pass% -pwdneverexpires yes -samid mark%%A -upn mark%%A -memberof "cn=marketing, ou=Marketing, ou=Office, dc=mechwart, dc=local"
    dsmod user "CN=mark%%A, OU=Marketing, ou=Office, dc=mechwart,dc=local" -disabled no

    dsadd user "CN=iroda%%A, OU=TavoliIroda, ou=Office, dc=mechwart,dc=local" -pwd %pass% -pwdneverexpires yes -samid iroda%%A -upn iroda%%A -memberof "cn=tavoliIroda, ou=TavoliIroda, ou=Office, dc=mechwart, dc=local"
    dsmod user "CN=iroda%%A, OU=TavoliIroda, ou=Office, dc=mechwart,dc=local" -disabled no

    dsadd user "CN=info%%A, OU=IT, dc=mechwart,dc=local" -pwd %pass% -pwdneverexpires yes -samid info%%A -upn info%%A -memberof "cn=iTeam, ou=IT, dc=mechwart, dc=local"
    dsmod user "CN=info%%A, OU=IT, dc=mechwart,dc=local" -disabled no
    
)

endlocal