1 PRINT "                                                        upppwwp"
2 PRINT "                                        uuuuuppppppwwwwl     pl"
3 PRINT "                                  uppwl                   pl"
4 PRINT "                                pl                       ps"
5 PRINT "                        upwwpupl                       pl q"
6 PRINT "                     pwl                           pwul  s"
7 PRINT "                   pl                            p  i   l"
8 PRINT "                 pl  pl   p                     s cps  n"
9 PRINT "               pl  pl  upl                 qcp q     pl"
10 PRINT "            upl  pl  ul  cp                s qpl   pl"
11 PRINT "         upl  pwl  pl      cwp            c      pl"
12 PRINT "       pl   pl   pl           cwppu u u u pwp    n"
13 PRINT "      s    so upl                pwwl   pl   i   q"
14 PRINT "    pl iuuppwl                  spp    pc    s pl"
15 PRINT "  pl   p l                       splspl     s  q"
16 PRINT " cwwwl                                   upl   l"
17 PRINT "                                       spl    pl"
18 PRINT "                                        splspl"
28 PRINT ""
29 PRINT "you are a goose in a maze. the word softwire is printed on your stomach and this makes you unreasonably angry." : PRINT
30 PRINT : PRINT "you instinctively start to follow the left wall, but the graduate recruitment process has recently been revamped, so instead of going forward, left and right your movement options are *north*, *south*, *east* or *west*." : PRINT
31 PRINT : PRINT "you can *look* around you"
40 GOTO 1300

1300 REM 13 G - Letterbox
1310 PRINT "you are at a crossroads, to the west of a white house. there is a small *mailbox* here."
1320 INPUT ">"; C$
1321 IF C$ = "look" GOTO 1300;
1322 IF C$ = "west" GOTO 1200;
1323 IF C$ = "east" GOTO 1400;
1324 IF C$ = "north" GOTO 800;
1325 IF C$ = "south" GOTO 1800;
1326 IF C$ = "open mailbox" or C$ = "examine mailbox" GOTO 1340;
1330 PRINT "unrecognized command" : GOTO 1320
1340 PRINT "you open the mailbox with your bill. there is a letter in the mailbox. that letter is: **g**" : GOTO 1320

1400 REM 14 R - White House
1410 PRINT "the door to the white house is boarded up, probably following the impeachment enquiry. the letter **r** is scratched into the board."
1420 PRINT "there are walls to the north and south."
1430 INPUT ">"; C$
1431 IF C$ = "look" GOTO 1400
1432 IF C$ = "north" OR C$ = "south" THEN PRINT "bonk!" : GOTO 1430
1433 IF C$ = "west" GOTO 1300
1434 IF C$ = "east" GOTO 1500
1440 PRINT "unrecognized command" : GOTO 1320 

