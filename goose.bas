10 REM INTRO
11 PRINT "----------------------------"
12 PRINT ""
13 PRINT "   /mn--                    @@""
14 PRINT "  /c / y@@@@   /@@@@@@@@@@@@@&""
15 PRINT " /-'     #@@@@@@@@@@@@@@@@@,""
16 PRINT "         v@@@@@@@@@@@@@@@@.""
17 PRINT "          @@@@@@@@@@@@@@@,""
18 PRINT "            v@@@@@@@@@@@#""
19 PRINT "                  @@@@@&""
20 PRINT "                    //*""
21 PRINT "               3..*/""
22 PRINT ""
23 PRINT "  you are a goose"
24 PRINT ""
25 PRINT : C$ = "" : INPUT ">"; C$ : PRINT
26 PRINT "you are a goose in a maze. the word softwire is printed on your stomach and this makes you unreasonably angry."
27 PRINT : C$ = "" : INPUT ">"; C$ : PRINT
28 PRINT "you instinctively start to follow the left wall, but the graduate recruitment process has recently been revamped, so instead of going forward, left and right your movement options are *north*, *south*, *east* or *west*."
29 PRINT : C$ = "" : INPUT ">"; C$ : PRINT
30 PRINT "you can *look* around you"
31 PRINT : C$ = "" : INPUT ">"; C$ : PRINT
32 GOTO 3300

3300 REM 13 G - Letterbox
3301 PRINT "you are at a crossroads, to the west of a white house. there is a small *mailbox* here."
3302 INPUT ">"; C$
3310 IF C$ = "look" GOTO 3300;
3311 IF C$ = "west" OR C$ = "go west" GOTO 2300;
3312 IF C$ = "east" GOTO 4300;
3313 IF C$ = "north" GOTO 3200;
3314 IF C$ = "south" GOTO 3400;
3315 IF C$ = "open mailbox" GOTO 3351;
3316 IF C$ = "examine mailbox" GOTO 3351;
3317 PRINT "404 command not found" : GOTO 3302
3350 PRINT "bonk!" : GOTO 3302
3351 PRINT "you open the mailbox with your bill. there is a letter in the mailbox." : GOTO 3302
3352 PRINT "that letter is: **g**" : GOTO 3302

4300 REM 14 R - White House
4301 PRINT "the door to the white house is boarded up, probably following the impeachment enquiry."
4302 PRINT "the letter **r** is scratched into the board."
4303 PRINT "there are walls to the north and south."
4304 INPUT ">"; C$
4310 IF C$ = "look" GOTO 4300;
4311 IF C$ = "west" OR C$ = "go west" GOTO 3300;
4312 IF C$ = "east" GOTO 5300;
4313 IF C$ = "north" GOTO 4350;
4314 IF C$ = "south" GOTO 4350;
4315 PRINT "404 command not found" : GOTO 4304
4350 PRINT "bonk!" : GOTO 4304