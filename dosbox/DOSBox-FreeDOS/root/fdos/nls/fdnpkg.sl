# FDNPKG language file
#
# Language..: Slovene
# Translator: Matej Horvat (http://matejhorvat.si/)
# Updated...: 2016-12-12
# Codepage..: 852

#### Help ####

1.0:To je internetni upravitelj paketov za FreeDOS.
1.1:Uporaba: FDNPKG dejavnost [parametri]
1.2:kjer je dejavnost ena od slede�ih:
1.3: SEARCH [niz]          Poi�e paket, ki vsebuje niz v internetnih zbirkah.
1.4: VSEARCH [niz]         Enako kot SEARCH, a izpi�e �e pakete z izvorno kodo.
1.5: INSTALL paket         Namesti �eleni paket oz. lokalno ZIP datoteko.
1.6: REMOVE paket          Odstrani paket.
1.7: DUMPCFG               Izpi�e nastavitve.
1.8: LICENSE               Izpi�e licenco tega programa.
1.9:FDNPKG uporablja slede�o verzijo WatTCP:
1.10: INSTALL-NOSRC paket   Enako kot INSTALL, toda ne namesti izvorne kode.
1.11: INSTALL-WSRC paket    Enako kot INSTALL, toda namesti izvorno kodo.
1.12: SHOWINSTALLED [niz]   Izpi�e name�ene pakete, ki vsebujejo niz.
1.13: CHECKUPDATES          Preveri, ali obstajajo posodobitve, in jih izpi�e.
1.14: UPDATE                Posodobi vse pakete na najnovej�o verzijo.
1.15: UPDATE paket          Posodobi dolo�en paket na najnovej�o verzijo.
1.16: LISTLOCAL [niz]       Izpi�e name�ene pakete, ki vsebujejo niz.
1.17: FDNPKG uporablja slede�o verzijo Watt-32:
1.18: LISTFILES paket       Izpi�e datoteke, ki pripadajo paketu.


### General stuff ####

2.0:Spremenljivka TEMP ni nastavljena! Ka�e naj na imenik, kamor se da pisati.
2.1:Primer: SET TEMP=C:\TEMP
2.2:Spremenljivka DOSDIR ni nastavljena! Ka�e naj na glavni imenik FreeDOSa.
2.3:Primer: SET DOSDIR=C:\FDOS
2.4:Neveljavno �tevilo parametrov. Za�enite FDNPKG brez parametrov za pomo�.
2.5:Nastavljena ni nobena zbirka. Potrebujete vsaj eno.
2.6:V nastavitveno datoteko dodajte vsaj en vnos slede�e oblike:
2.7:REPO www.freedos.org/repo
2.8:Trenutno nastavljene zbirke za FDNPKG:
2.9:Osve�ujem %s...
2.10:Prenos zbirke ni uspel!
2.11:Ni bilo mogo�e prebrati zbirke iz za�asne datoteke.
2.12:Opozorilo: %TZ% ni nastavljena. �asi novih datotek morda ne bodo to�ni.
2.13:Baza paketov nalo�ena iz predpomnilnika.
2.14:Ni dovolj spomina! (%s)
2.15:Napaka: Zagon TCP/IP ni uspel!
2.16:Prena�am %s...
2.17:OPOZORILO: Navideznega pomnilnika je malo. FDNPKG morda ne bo deloval pravilno.
2.18:NAPAKA: Ni mogo�e pisati v imenik %s. Preverite svojo spremenljivko TEMP.


#### Installing package ####

3.0:Paket %s je �e name�en. �e ga �elite posodobiti, ga najprej odstranite.
3.1:Paketa %s ni mogo�e najti v internetnih zbirkah.
3.2:Paketa %s ni v zbirkah.
3.3:%s je na voljo v ve� kot eni zbirki. Izberite eno:
3.4:Va�a izbira:
3.5:Neveljavna izbira!
3.6:Prena�am paket %s...
3.7:Napaka pri prenosu paketa. Prenos prekinjen.
3.8:Napaka: Neveljavna ZIP datoteka! Paketa ni mogo�e namestiti.
3.9:Napaka: Paket vsebuje datoteko, ki �e obstaja na tem ra�unalniku:
3.10:Napaka: Ni mogo�e ustvariti %s.
3.11:Paket %s name�en.
3.12:Napaka: Paket ne vsebuje datoteke %s; to ni veljaven FreeDOS paket.
3.13:Napaka: Prene�en paket ima napa�en CRC. Namestitev prekinjena.
3.14:Napaka: Ni mogo�e odpreti prene�enega paketa. Namestitev prekinjena.
3.15:Napaka: Ni dovolj spomina za izra�un CRC vrednosti paketa.
3.16:Paket %s name�en (z izvorno kodo, �e je ta prilo�ena).
3.17:Paket %s name�en (brez izvorne kode).
3.18:Paket %s je �e name�en! Morda �elite uporabiti dejavnost UPDATE.
3.19:Paket %s name�en: %d datotek raz�irjenih, %d napak.
3.20:Napaka: paket vsebuje �ifrirano datoteko:
3.21:Napaka: ni mogo�e odpreti povezovalne datoteke %s za branje.
3.22:Napaka: ni mogo�e odpreti povezovalne datoteke %s za pisanje.
3.23:Napaka: paket vsebuje neveljavno ime datoteke:


#### Removing package ####
4.0:Paket %s ni name�en, zato ga ni mogo�e odstraniti.
4.1:Ni mogo�e odpreti datoteke LST.
4.2:Dose�ena omejitev dol�ine seznama imenikov. Imenik %s ne bo odstranjen!
4.3:Ni dovolj spomina. Ni mogo�e shraniti imenika %s!
4.4:odstranjujem %s
4.5:Paket %s odstranjen.


#### Searching package ####

5.0:Noben paket ne ustreza iskalnim zahtevam.
5.1:Ni dovolj spomina za procesiranje opisov paketov!


#### Package database handling ####

6.0:Napaka: Neveljavno kazalo (napa�na glava). Zbirka bo presko�ena.
6.1:Napaka: Neveljavno kazalo. Zbirka bo presko�ena.
6.2:Napaka: Ni dovolj spomina za bazo paketov!
6.3:Napaka: Ni mogo�e odpreti datoteke %s.
6.4:Opozorilo: Ni mogo�e odpreti predpomnilne datoteke %s.


#### Loading configuration ####

7.0:Napaka: Zbirka %s je na�teta dvakrat!
7.1:Napaka: Ni mogo�e odpreti nastavitvene datoteke %s.
7.2:Opozorilo: ukaz brez vrednosti v vrstici %d
7.3:Warning: Config file token overflow on line #%d
7.4:Warning: token with empty value on line #%d
7.5:Opozorilo: nevidni znaki na koncu vrstice �t. %d
7.6:Vsaj ena zbirka je bila izpu�ena; preve� jih je na�tetih (omejitev je %d).
7.8:Opozorilo: neznan ukaz "%s" v vrstici %d
7.9:Warning: Config file value overflow on line #%d
7.10:Opozorilo: Vrednost "%s" v vrstici �t. %d prezrta.
7.11:Opozorilo: Neveljaven ukaz DIR v vrstici %d.
7.12:Napaka: Pot DIR v vrstici �t. %d je predolga.
7.13:Napaka: Okoljska spremenljivka %s, omenjena v vrstici �t. %d, ne obstaja.
7.14:Napaka: Zbirka %s je na�teta dvakrat!
7.15:Error: custom dir '%s' is not a valid absolute path!
7.16:Error: custom dir '%s' is a reserved name!


#### Unziping package ####

8.0:Ni dovolj spomina!
8.1:Neznana vrsta datoteke ZIP: 0x%08x
8.2:Napaka: Paket vsebuje datoteko, ki je stisnjena z nepodprto metodo (%d):
8.3:Napaka med raz�irjanjem %s v %s!


#### Handling the local list of installed packages ####

9.0:Napaka: Dostop do imenika %s ni mogo�.
9.1:Napaka: Ni mogo�e najti lokalnega paketa %s.


#### Package updates ####

10.0:%s (name�ena verzija %s)
10.1:verzija %s na %s
10.2:Za paket %s ni posodobitve.
10.3:Obstaja posodobitev za paket %s. Posodobitev poteka...
10.4:%d paketov pregledanih, %d paketov posodobljenih, %d napak.
10.5:Najdenih %d posodobitev.
10.6:Paket %s ni name�en.
10.7:Iskanje posodobitev...

#### Downloading ####

11.0:Prena�am %s... %ld bajtov
