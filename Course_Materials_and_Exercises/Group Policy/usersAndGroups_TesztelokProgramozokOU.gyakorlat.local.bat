@echo off

dsadd ou "ou=Programozok, dc=gyakorlat, dc=local"
dsadd group "cn=programozok, ou=Programozok, dc=gyakorlat, dc=local"

dsadd ou "ou=Tesztelok, dc=gyakorlat, dc=local"
dsadd group "cn=tesztelok, ou=Tesztelok, dc=gyakorlat, dc=local"
dsadd group "cn=ellenorok, ou=Tesztelok, dc=gyakorlat, dc=local"

rem ez lesz a felhasznalok jelszava
set pass=Magik1908

dsadd user "cn=programozo1, ou=Programozok, dc=gyakorlat, dc=local" -pwd %pass% -pwdneverexpires yes -samid programozo1 -upn programozo1 -memberof "cn=programozok, ou=Programozok, dc=gyakorlat, dc=local"
dsmod user "cn=programozo1, ou=Programozok, dc=gyakorlat, dc=local" -disabled no

dsadd user "cn=tesztelo1, ou=Tesztelok, dc=gyakorlat, dc=local" -pwd %pass% -pwdneverexpires yes -samid tesztelo1 -upn tesztelo1 -memberof "cn=tesztelok, ou=Tesztelok, dc=gyakorlat, dc=local"
dsmod user "cn=tesztelo1, ou=Tesztelok, dc=gyakorlat, dc=local" -disabled no

dsadd user "cn=ellenor1, ou=Tesztelok, dc=gyakorlat, dc=local" -pwd %pass% -pwdneverexpires yes -samid ellenor1 -upn ellenor1 -memberof "cn=ellenorok, ou=Tesztelok, dc=gyakorlat, dc=local"
dsmod user "cn=ellenor1, ou=Tesztelok, dc=gyakorlat, dc=local" -disabled no

dsadd user "cn=programozo2, ou=Programozok, dc=gyakorlat, dc=local" -pwd %pass% -pwdneverexpires yes -samid programozo2 -upn programozo2 -memberof "cn=programozok, ou=Programozok, dc=gyakorlat, dc=local"
dsmod user "cn=programozo2, ou=Programozok, dc=gyakorlat, dc=local" -disabled no

dsadd user "cn=tesztelo2, ou=Tesztelok, dc=gyakorlat, dc=local" -pwd %pass% -pwdneverexpires yes -samid tesztelo2 -upn tesztelo2 -memberof "cn=tesztelok, ou=Tesztelok, dc=gyakorlat, dc=local"
dsmod user "cn=tesztelo2, ou=Tesztelok, dc=gyakorlat, dc=local" -disabled no

dsadd user "cn=ellenor2, ou=Tesztelok, dc=gyakorlat, dc=local" -pwd %pass% -pwdneverexpires yes -samid ellenor2 -upn ellenor2 -memberof "cn=ellenorok, ou=Tesztelok, dc=gyakorlat, dc=local"
dsmod user "cn=ellenor2, ou=Tesztelok, dc=gyakorlat, dc=local" -disabled no

