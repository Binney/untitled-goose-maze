10 REM INTRO
11 PRINT "{light blue}. {orange}WQWQWQWQWQWQWQWQWQWQWQWQWQWQWQWQWQ"
12 PRINT "{light blue}.            {white}RRRR                 {white}{cm a}{cm s}"
13 PRINT "{light blue}.  {yellow}GG   GG {white}NNEEEEMM {yellow}GGM  GG {white}GG NN {white}BB"
14 PRINT "{light blue}.  {yellow}GGRRRGG {white}N      M {yellow}GGMM GG {white}GGNN  {white}BB"
15 PRINT "{light blue}.  {yellow}GGEEEGG {white}G      G {yellow}GG MMGG {white}GGN   {white}BB"
16 PRINT "{light blue}.  {yellow}GG   GG {white}M  RR  N {yellow}GG  MMG {white}GGMM  {white}{cm z}{cm x}"
17 PRINT "{light blue}.  {yellow}GG   GG {white}MMRRRRNN {yellow}GG   GG {white}GG MM {white}UI"
18 PRINT "{light blue}.                                 {white}JK"
19 PRINT "{light blue}. {orange}QWQWQWQWQWQWQWQWQWQWQWQWQWQWQWQWQW"
20 PRINT "{light blue}."
21 PRINT "{light blue}.            {white}press enter{light blue}"
22 PRINT ""
23 PRINT
24 INPUT ">"; C$ : PRINT
25 PRINT "{light blue}.     {white}/mnaa                    @@""
26 PRINT "{light blue}.    {orange}/{white}o@/ v@@@@   /@@@@@@@@@@@@@&""
27 PRINT "{light blue}.   {orange}/-'{white}     #@@@@@@@@@@@@@@@@@,""
28 PRINT "{light blue}.           {white}v@@@@@@@@@@@@@@@@.""
29 PRINT "{light blue}.            {white}@@@@@@@@@@@@@@@,""
30 PRINT "{light blue}.              {white}v@@@@@@@@@@@#""
31 PRINT "{light blue}.                    {white}@@@@@&""
32 PRINT "{light blue}.                      {orange}//{white}*""
33 PRINT "{light blue}.                 {orange}3..*//{light blue}""
34 PRINT ""
35 PRINT
36 INPUT ">"; C$ : PRINT
37 PRINT "you are a goose"
38 PRINT
39 INPUT ">"; C$ : PRINT
40 PRINT "you are a goose in a maze. the word"
41 PRINT "softwire is printed on your stomach and"
42 PRINT "this makes you unreasonably angry."
43 PRINT
44 INPUT ">"; C$ : PRINT
45 PRINT "you instinctively start to follow the"
46 PRINT "left wall, but the graduate recruitment"
47 PRINT "process has recently been revamped, so"
48 PRINT "instead of going forward, left and"
49 PRINT "right your movement options are {cyan}north{light blue},"
50 PRINT "{cyan}south{light blue}, {cyan}east{light blue} or {cyan}west{light blue}."
51 PRINT
52 INPUT ">"; C$ : PRINT
53 PRINT "you can {cyan}look{light blue} around you"
54 PRINT
55 INPUT ">"; C$ : PRINT
56 GOTO 33000

11000 REM 1 h - horse
11001 PRINT "you find a horse. he looks roughly four"
11002 PRINT "years old. he has a name badge on his"
11003 PRINT "horse-collar."
11004 PRINT
11005 PRINT "there are walls to the north, south and"
11006 PRINT "west."
11007 PRINT
11008 C$ = "" : INPUT ">"; C$ : PRINT
11100 IF C$ = "look" GOTO 11000;
11101 IF C$ = "west" OR C$ = "go west" GOTO 11200;
11102 IF C$ = "east" OR C$ = "go east" GOTO 21000;
11103 IF C$ = "north" OR C$ = "go north" GOTO 11200;
11104 IF C$ = "south" OR C$ = "go south" GOTO 11200;
11105 IF C$ = "examine collar" GOTO 11201;
11106 IF C$ = "examine badge" GOTO 11201;
11107 IF C$ = "examine name badge" GOTO 11201;
11108 IF C$ = "honk" GOTO 11211;
11109 IF C$ = "f" GOTO 11214;
11110 PRINT "404 command not found" : PRINT : GOTO 11008
11200 PRINT "bonk!" : PRINT : GOTO 11008
11201 PRINT "the badge has a big h on it. on the"
11202 PRINT "reverse side the badge reads 'hugo',"
11203 PRINT "followed by an email to contact if the"
11204 PRINT "horse is lost."
11205 PRINT
11206 PRINT "before you can call the number, though,"
11207 PRINT "he bares his teeth as if to bite, so"
11208 PRINT "you back away."
11209 PRINT
11210 GOTO 11008
11211 PRINT "honk... onk... onk... nk..."
11212 PRINT
11213 GOTO 11008
11214 PRINT "you pay respects"
11215 PRINT
11216 GOTO 11008

12000 REM 6 h - haiduc
12001 PRINT "you enter an alcove with walls to the"
12002 PRINT "east, west and north."
12003 PRINT
12004 PRINT "sitting at a table, there is a man who"
12005 PRINT "appears to be some kind of highwayman"
12006 PRINT "or outlaw - or perhaps a freedom"
12007 PRINT "fighter, depending on whom you ask."
12008 PRINT
12009 PRINT "'sunt eu un... haiduc? how can i be a"
12010 PRINT "haiduc without my trusted steed?', he"
12011 PRINT "laments. 'but my horse has run off -"
12012 PRINT "how am i to find him?'"
12013 PRINT
12014 PRINT "he seems to be drowning his sorrows by"
12015 PRINT "drinking from a glass."
12016 PRINT
12017 C$ = "" : INPUT ">"; C$ : PRINT
12100 IF C$ = "look" GOTO 12000;
12101 IF C$ = "west" OR C$ = "go west" GOTO 12200;
12102 IF C$ = "east" OR C$ = "go east" GOTO 12200;
12103 IF C$ = "north" OR C$ = "go north" GOTO 12200;
12104 IF C$ = "south" OR C$ = "go south" GOTO 13000;
12105 IF C$ = "use glass" GOTO 12201;
12106 IF C$ = "examine glass" GOTO 12201;
12107 IF C$ = "bang glass" GOTO 12201;
12108 IF C$ = "bang your glass" GOTO 12201;
12109 IF C$ = "bang your glass on the table" GOTO 12201;
12110 IF C$ = "knock over glass" GOTO 12201;
12111 IF C$ = "honk" GOTO 12219;
12112 IF C$ = "f" GOTO 12222;
12113 PRINT "404 command not found" : PRINT : GOTO 12017
12200 PRINT "bonk!" : PRINT : GOTO 12017
12201 PRINT "you knock over the glass with your"
12202 PRINT "bill; it bangs on the table. the haiduc"
12203 PRINT "stands up at once:"
12204 PRINT
12205 PRINT "'of course, handrii popa - how could"
12206 PRINT "you have been so foolish? i must shout"
12207 PRINT "to my horse!'"
12208 PRINT
12209 PRINT "'hugo, hugo, how am i to find you?'"
12210 PRINT
12211 PRINT "a neighing sounds off from behind a"
12212 PRINT "wall. handrii the haiduc runs off."
12213 PRINT
12214 PRINT "you notice he has forgot his"
12215 PRINT "handkerchief. it is embroidered with"
12216 PRINT "the letter 'h'."
12217 PRINT
12218 GOTO 12017
12219 PRINT "honk... onk... onk... nk..."
12220 PRINT
12221 GOTO 12017
12222 PRINT "you pay respects"
12223 PRINT
12224 GOTO 12017

13000 REM 11 n - panto
13001 PRINT "as you enter this next square, you"
13002 PRINT "remember you are tremendously hungry."
13003 PRINT
13004 PRINT "on any normal day you would go to the"
13005 PRINT "pond and bully the ducks for their"
13006 PRINT "lunch money, but all there seems to be"
13007 PRINT "here is a big table covered in fancy"
13008 PRINT "dress costumes and a heavy sheaf of"
13009 PRINT "paper."
13010 PRINT
13011 PRINT "really tasty looking paper."
13012 PRINT
13013 PRINT "there are walls to the south and west,"
13014 PRINT "and you can hear someone yelling 'where"
13015 PRINT "the bloody hell is the script?'"
13016 PRINT
13017 C$ = "" : INPUT ">"; C$ : PRINT
13100 IF C$ = "look" GOTO 13000;
13101 IF C$ = "west" OR C$ = "go west" GOTO 13200;
13102 IF C$ = "east" OR C$ = "go east" GOTO 23000;
13103 IF C$ = "north" OR C$ = "go north" GOTO 12000;
13104 IF C$ = "south" OR C$ = "go south" GOTO 13200;
13105 IF C$ = "eat" GOTO 13201;
13106 IF C$ = "eat paper" GOTO 13201;
13107 IF C$ = "eat the paper" GOTO 13201;
13108 IF C$ = "eat the papers" GOTO 13201;
13109 IF C$ = "eat script" GOTO 13201;
13110 IF C$ = "eat pile of paper" GOTO 13201;
13111 IF C$ = "consume paper" GOTO 13201;
13112 IF C$ = "honk" GOTO 13218;
13113 IF C$ = "f" GOTO 13221;
13114 PRINT "404 command not found" : PRINT : GOTO 13017
13200 PRINT "bonk!" : PRINT : GOTO 13017
13201 PRINT "you make quick work of the pile of"
13202 PRINT "papers, which could use a little"
13203 PRINT "seasoning. just as you're about to"
13204 PRINT "polish off the final page a"
13205 PRINT "harassed-looking software developer"
13206 PRINT "hurries around a corner."
13207 PRINT
13208 PRINT "they stop in shock to see you munch one"
13209 PRINT "of the letters out of the final page:"
13210 PRINT
13211 PRINT "'softpa t 2019'"
13212 PRINT
13213 PRINT "you are chased out of the square by a"
13214 PRINT "mob of angry devs faster than you can"
13215 PRINT "say 'lincoln stone'."
13216 PRINT
13217 GOTO 13017
13218 PRINT "honk... onk... onk... nk..."
13219 PRINT
13220 GOTO 13017
13221 PRINT "you pay respects"
13222 PRINT
13223 GOTO 13017

14000 REM 16 a - insert muse reference here
14001 PRINT "you find a man with sparkly clothes,"
14002 PRINT "neon glasses and a keytar. he says, 'my"
14003 PRINT "name is matt bellamy. would you like me"
14004 PRINT "to sing you a song?'"
14005 PRINT
14006 PRINT "there are walls to the north and west."
14007 PRINT
14008 C$ = "" : INPUT ">"; C$ : PRINT
14100 IF C$ = "look" GOTO 14000;
14101 IF C$ = "west" OR C$ = "go west" GOTO 14200;
14102 IF C$ = "east" OR C$ = "go east" GOTO 24000;
14103 IF C$ = "north" OR C$ = "go north" GOTO 14200;
14104 IF C$ = "south" OR C$ = "go south" GOTO 15000;
14105 IF C$ = "reply" GOTO 14201;
14106 IF C$ = "reply to matt" GOTO 14201;
14107 IF C$ = "reply to matt bellamy" GOTO 14201;
14108 IF C$ = "yes" GOTO 14201;
14109 IF C$ = "no" GOTO 14201;
14110 IF C$ = "answer" GOTO 14201;
14111 IF C$ = "sing" GOTO 14201;
14112 IF C$ = "honk" GOTO 14206;
14113 IF C$ = "honk" GOTO 14219;
14114 IF C$ = "f" GOTO 14222;
14115 PRINT "404 command not found" : PRINT : GOTO 14008
14200 PRINT "bonk!" : PRINT : GOTO 14008
14201 PRINT "silly you! you are a goose and cannot"
14202 PRINT "speak the human tongue. there is only"
14203 PRINT "one way you know how to communicate..."
14204 PRINT
14205 GOTO 14008
14206 PRINT "matt bellamy sings the highest note he"
14207 PRINT "possibly can. it is exactly a semitone"
14208 PRINT "higher than the g#5 he hits in showbiz."
14209 PRINT "his own glasses shatter under the"
14210 PRINT "strain."
14211 PRINT
14212 PRINT "'i thought you only went up to a g#5',"
14213 PRINT "you honk."
14214 PRINT
14215 PRINT "'well that's muse to me', replies matt"
14216 PRINT "bellamy."
14217 PRINT
14218 GOTO 14008
14219 PRINT "honk... onk... onk... nk..."
14220 PRINT
14221 GOTO 14008
14222 PRINT "you pay respects"
14223 PRINT
14224 GOTO 14008

15000 REM 21 t - toblerone
15001 PRINT "you encounter a lot of triangles, each"
15002 PRINT "of which is totally unblerred. you"
15003 PRINT "consider blerring all of them, but"
15004 PRINT "there really are a lot and you simply"
15005 PRINT "don't have time."
15006 PRINT
15007 PRINT "you really, really want just to bler"
15008 PRINT "one."
15009 PRINT
15010 C$ = "" : INPUT ">"; C$ : PRINT
15100 IF C$ = "look" GOTO 15000;
15101 IF C$ = "west" OR C$ = "go west" GOTO 15200;
15102 IF C$ = "east" OR C$ = "go east" GOTO 15200;
15103 IF C$ = "north" OR C$ = "go north" GOTO 14000;
15104 IF C$ = "south" OR C$ = "go south" GOTO 15200;
15105 IF C$ = "toblerone" GOTO 15201;
15106 IF C$ = "honk" GOTO 15209;
15107 IF C$ = "f" GOTO 15212;
15108 PRINT "404 command not found" : PRINT : GOTO 15010
15200 PRINT "bonk!" : PRINT : GOTO 15010
15201 PRINT "you invite the essence of the toblerone"
15202 PRINT "into the very core of your being. you"
15203 PRINT "emerge not quite the same goose, but"
15204 PRINT "changed, somehow, subtly, irreversibly."
15205 PRINT "you see now that the letter you sought"
15206 PRINT "was: t. t for toblerone."
15207 PRINT
15208 GOTO 15010
15209 PRINT "honk... onk... onk... nk..."
15210 PRINT
15211 GOTO 15010
15212 PRINT "you pay respects"
15213 PRINT
15214 GOTO 15010

21000 REM 2 a - description of letter
21001 PRINT "another alarmingly ample object is at"
21002 PRINT "this junction. it's built from two"
21003 PRINT "diagonal struts leaning against each"
21004 PRINT "other, with a crossbar connecting them"
21005 PRINT "halfway up."
21006 PRINT
21007 PRINT "there is a wall to the north."
21008 PRINT
21009 C$ = "" : INPUT ">"; C$ : PRINT
21100 IF C$ = "look" GOTO 21000;
21101 IF C$ = "west" OR C$ = "go west" GOTO 11000;
21102 IF C$ = "east" OR C$ = "go east" GOTO 31000;
21103 IF C$ = "north" OR C$ = "go north" GOTO 21200;
21104 IF C$ = "south" OR C$ = "go south" GOTO 22000;
21105 IF C$ = "honk" GOTO 21201;
21106 IF C$ = "f" GOTO 21204;
21107 PRINT "404 command not found" : PRINT : GOTO 21009
21200 PRINT "bonk!" : PRINT : GOTO 21009
21201 PRINT "honk... onk... onk... nk..."
21202 PRINT
21203 GOTO 21009
21204 PRINT "you pay respects"
21205 PRINT
21206 GOTO 21009

22000 REM 7 o - op-1
22001 PRINT "there is an extremely expensive synth"
22002 PRINT "on the floor here. presumably somebody"
22003 PRINT "paid £600 for it in some sort of online"
22004 PRINT "auction, but the sale turned out to be"
22005 PRINT "a scam so they discarded it here."
22006 PRINT
22007 PRINT "the only exit is north."
22008 PRINT
22009 C$ = "" : INPUT ">"; C$ : PRINT
22100 IF C$ = "look" GOTO 22000;
22101 IF C$ = "west" OR C$ = "go west" GOTO 22200;
22102 IF C$ = "east" OR C$ = "go east" GOTO 22200;
22103 IF C$ = "north" OR C$ = "go north" GOTO 21000;
22104 IF C$ = "south" OR C$ = "go south" GOTO 22200;
22105 IF C$ = "play synth" GOTO 22201;
22106 IF C$ = "play keyboard" GOTO 22201;
22107 IF C$ = "keyboard synth" GOTO 22201;
22108 IF C$ = "keyboard keyboard" GOTO 22201;
22109 IF C$ = "honk" GOTO 22211;
22110 IF C$ = "f" GOTO 22214;
22111 PRINT "404 command not found" : PRINT : GOTO 22009
22200 PRINT "bonk!" : PRINT : GOTO 22009
22201 PRINT "silly you! you are a goose, so you"
22202 PRINT "cannot play the synth. instead you"
22203 PRINT "waddle over the keys repeatedly. they"
22204 PRINT "make pleasing electronic sounds."
22205 PRINT
22206 PRINT "you accidentally tread mud into the"
22207 PRINT "keyboard so you can't read the full"
22208 PRINT "name, but all you see is the letter o."
22209 PRINT
22210 GOTO 22009
22211 PRINT "honk... onk... onk... nk..."
22212 PRINT
22213 GOTO 22009
22214 PRINT "you pay respects"
22215 PRINT
22216 GOTO 22009

23000 REM 12 g - jewelled egg
23001 PRINT "you stumble into a forest and quickly"
23002 PRINT "become very lost. honestly, how long"
23003 PRINT "have you been playing this game? aren't"
23004 PRINT "geese supposed to have a honing"
23005 PRINT "instinct? or is that pigeons?"
23006 PRINT
23007 PRINT "anyway"
23008 PRINT
23009 PRINT "you wander around aimlessly until you"
23010 PRINT "find a clearing. in the middle of the"
23011 PRINT "clearing is a pile of leaves."
23012 PRINT
23013 PRINT "the foliage to the north and south is"
23014 PRINT "impenetrable."
23015 PRINT
23016 C$ = "" : INPUT ">"; C$ : PRINT
23100 IF C$ = "look" GOTO 23000;
23101 IF C$ = "west" OR C$ = "go west" GOTO 13000;
23102 IF C$ = "east" OR C$ = "go east" GOTO 33000;
23103 IF C$ = "north" OR C$ = "go north" GOTO 23200;
23104 IF C$ = "south" OR C$ = "go south" GOTO 23200;
23105 IF C$ = "disturb leaves" GOTO 23201;
23106 IF C$ = "examine leaves" GOTO 23201;
23107 IF C$ = "search leaves" GOTO 23201;
23108 IF C$ = "disturb pile" GOTO 23201;
23109 IF C$ = "examine pile" GOTO 23201;
23110 IF C$ = "search pile" GOTO 23201;
23111 IF C$ = "honk" GOTO 23210;
23112 IF C$ = "f" GOTO 23213;
23113 PRINT "404 command not found" : PRINT : GOTO 23016
23200 PRINT "bonk!" : PRINT : GOTO 23016
23201 PRINT "you fish around in the pile of leaves,"
23202 PRINT "and find... an egg encrusted with"
23203 PRINT "jewels!"
23204 PRINT
23205 PRINT "hey, wait, this is actually just the"
23206 PRINT "letter g. oh well. better keep looking"
23207 PRINT "for that treasure."
23208 PRINT
23209 GOTO 23016
23210 PRINT "honk... onk... onk... nk..."
23211 PRINT
23212 GOTO 23016
23213 PRINT "you pay respects"
23214 PRINT
23215 GOTO 23016

24000 REM 17 t - 3d
24001 PRINT "there's a peculiar sculpture here,"
24002 PRINT "comprising a tall thin vertical trunk"
24003 PRINT "with a horizontal bar across the top."
24004 PRINT
24005 PRINT "there are walls to the east and north."
24006 PRINT
24007 C$ = "" : INPUT ">"; C$ : PRINT
24100 IF C$ = "look" GOTO 24000;
24101 IF C$ = "west" OR C$ = "go west" GOTO 14000;
24102 IF C$ = "east" OR C$ = "go east" GOTO 24200;
24103 IF C$ = "north" OR C$ = "go north" GOTO 24200;
24104 IF C$ = "south" OR C$ = "go south" GOTO 25000;
24105 IF C$ = "honk" GOTO 24201;
24106 IF C$ = "f" GOTO 24204;
24107 PRINT "404 command not found" : PRINT : GOTO 24007
24200 PRINT "bonk!" : PRINT : GOTO 24007
24201 PRINT "honk... onk... onk... nk..."
24202 PRINT
24203 GOTO 24007
24204 PRINT "you pay respects"
24205 PRINT
24206 GOTO 24007

25000 REM 22 h - hatoful boyfriend
25001 PRINT "there is a pigeon in this square. he is"
25002 PRINT "extremely attractive, with glossy white"
25003 PRINT "feathers and a twinkle in his eye."
25004 PRINT
25005 PRINT "'anata ga ten kara ochita toki, sore wa"
25006 PRINT "itamimashita ka?' he asks."
25007 PRINT
25008 PRINT "your japanese is pretty rusty, but you"
25009 PRINT "think he's coming on to you."
25010 PRINT
25011 PRINT "there are walls to the south and west."
25012 PRINT
25013 C$ = "" : INPUT ">"; C$ : PRINT
25100 IF C$ = "look" GOTO 25000;
25101 IF C$ = "west" OR C$ = "go west" GOTO 25200;
25102 IF C$ = "east" OR C$ = "go east" GOTO 35000;
25103 IF C$ = "north" OR C$ = "go north" GOTO 24000;
25104 IF C$ = "south" OR C$ = "go south" GOTO 25200;
25105 IF C$ = "honk" GOTO 25201;
25106 IF C$ = "seduce" GOTO 25201;
25107 IF C$ = "seduce pigeon" GOTO 25201;
25108 IF C$ = "flirt" GOTO 25201;
25109 IF C$ = "flirt pigeon" GOTO 25201;
25110 IF C$ = "flirt with pigeon" GOTO 25201;
25111 IF C$ = "honk" GOTO 25217;
25112 IF C$ = "f" GOTO 25220;
25113 PRINT "404 command not found" : PRINT : GOTO 25013
25200 PRINT "bonk!" : PRINT : GOTO 25013
25201 PRINT "you honk flirtatiously."
25202 PRINT
25203 PRINT "'anata no hane ga totemo kitanainode,"
25204 PRINT "tobenaikaradesu ka? he. kyuban.'"
25205 PRINT
25206 PRINT "the pigeon wanders off. you're pretty"
25207 PRINT "sure you have been insulted but don't"
25208 PRINT "know exactly how."
25209 PRINT
25210 PRINT "anyway, he dropped this slip of paper"
25211 PRINT "from the tanabata festival, so you"
25212 PRINT "steal it."
25213 PRINT
25214 PRINT "the wish is for: h"
25215 PRINT
25216 GOTO 25013
25217 PRINT "honk... onk... onk... nk..."
25218 PRINT
25219 GOTO 25013
25220 PRINT "you pay respects"
25221 PRINT
25222 GOTO 25013

31000 REM 3 v - vengaboys
31001 PRINT "as you turn the corner, you find four"
31002 PRINT "flamboyantly dressed dutch men and"
31003 PRINT "women. they're all gathered round a"
31004 PRINT "garishly coloured volkswagen type 2"
31005 PRINT "minibus."
31006 PRINT
31007 PRINT "'we gotta put some wheels in motion,"
31008 PRINT "but this thing's stalled! i think it"
31009 PRINT "must be out of tune; we need the right"
31010 PRINT "sound to kickstart it!'"
31011 PRINT
31012 PRINT "there are walls to the north and east."
31013 PRINT
31014 C$ = "" : INPUT ">"; C$ : PRINT
31100 IF C$ = "look" GOTO 31000;
31101 IF C$ = "west" OR C$ = "go west" GOTO 21000;
31102 IF C$ = "east" OR C$ = "go east" GOTO 31200;
31103 IF C$ = "north" OR C$ = "go north" GOTO 31200;
31104 IF C$ = "south" OR C$ = "go south" GOTO 32000;
31105 IF C$ = "honk" GOTO 31201;
31106 IF C$ = "honk honk" GOTO 31201;
31107 IF C$ = "toot" GOTO 31201;
31108 IF C$ = "toot toot" GOTO 31201;
31109 IF C$ = "boom" GOTO 31210;
31110 IF C$ = "boom boom" GOTO 31210;
31111 IF C$ = "boom boom boom boom" GOTO 31210;
31112 IF C$ = "honk" GOTO 31215;
31113 IF C$ = "f" GOTO 31218;
31114 PRINT "404 command not found" : PRINT : GOTO 31014
31200 PRINT "bonk!" : PRINT : GOTO 31014
31201 PRINT "'honk honk', the bus responds - and its"
31202 PRINT "wheels of steel start turning, as the"
31203 PRINT "speakers blast out the tune of the"
31204 PRINT "vengabus."
31205 PRINT
31206 PRINT "the vengaboys all flash you the v sign"
31207 PRINT "as the volkswagen drives away."
31208 PRINT
31209 GOTO 31014
31210 PRINT "you toss a ping-pong ball into a"
31211 PRINT "plastic cup; the vengaboys all drink."
31212 PRINT "you're not being helpful."
31213 PRINT
31214 GOTO 31014
31215 PRINT "honk... onk... onk... nk..."
31216 PRINT
31217 GOTO 31014
31218 PRINT "you pay respects"
31219 PRINT
31220 GOTO 31014

32000 REM 8 n - axe
32001 PRINT "as you wander the labyrinth you find"
32002 PRINT "what appears to be the corpse of an"
32003 PRINT "adventurer lying against the eastern"
32004 PRINT "wall. he's not in particularly good"
32005 PRINT "shape - his eyeballs are long past"
32006 PRINT "their best-before date - but his"
32007 PRINT "possessions absolutely are."
32008 PRINT
32009 C$ = "" : INPUT ">"; C$ : PRINT
32100 IF C$ = "look" GOTO 32000;
32101 IF C$ = "west" OR C$ = "go west" GOTO 32200;
32102 IF C$ = "east" OR C$ = "go east" GOTO 42000;
32103 IF C$ = "north" OR C$ = "go north" GOTO 31000;
32104 IF C$ = "south" OR C$ = "go south" GOTO 33000;
32105 IF C$ = "search corpse" GOTO 32201;
32106 IF C$ = "search adventurer" GOTO 32201;
32107 IF C$ = "search body" GOTO 32201;
32108 IF C$ = "examine corpse" GOTO 32201;
32109 IF C$ = "examine adventurer" GOTO 32201;
32110 IF C$ = "examine body" GOTO 32201;
32111 IF C$ = "loot corpse" GOTO 32201;
32112 IF C$ = "loot adventurer" GOTO 32201;
32113 IF C$ = "loot body" GOTO 32201;
32114 IF C$ = "search belongings" GOTO 32201;
32115 IF C$ = "search possessions" GOTO 32201;
32116 IF C$ = "take axe" GOTO 32215;
32117 IF C$ = "steal axe" GOTO 32215;
32118 IF C$ = "equip axe" GOTO 32215;
32119 IF C$ = "axe" GOTO 32215;
32120 IF C$ = "honk" GOTO 32225;
32121 IF C$ = "f" GOTO 32228;
32122 PRINT "404 command not found" : PRINT : GOTO 32009
32200 PRINT "bonk!" : PRINT : GOTO 32009
32201 PRINT "strung over his back is a satchel full"
32202 PRINT "of letters, a gleaming purple guitar,"
32203 PRINT "and the largest axe you have ever seen."
32204 PRINT "it's huge. it's even bigger than"
32205 PRINT "wizzair's checked-in baggage allowance."
32206 PRINT "it's also very sharp."
32207 PRINT
32208 PRINT "you might be a goose, but you know how"
32209 PRINT "rpgs work, and that axe probably gives"
32210 PRINT "+5 two-handed damage plus bleeding or"
32211 PRINT "something. it'd be a crime to leave it"
32212 PRINT "here to rust."
32213 PRINT
32214 GOTO 32009
32215 PRINT "you pull and pull at the axe's handle,"
32216 PRINT "but it's simply too heavy - you are"
32217 PRINT "unable to shift it. the guitar proves"
32218 PRINT "even heavier."
32219 PRINT
32220 PRINT "you make do instead by picking one of"
32221 PRINT "his letters out at random. it turns out"
32222 PRINT "to be an n."
32223 PRINT
32224 GOTO 32009
32225 PRINT "honk... onk... onk... nk..."
32226 PRINT
32227 GOTO 32009
32228 PRINT "you pay respects"
32229 PRINT
32230 GOTO 32009

33000 REM 13 G - Letterbox
33001 PRINT "you are at a crossroads, to the west of"
33002 PRINT "a white house. there is a small {cyan}mailbox{light blue}"
33003 PRINT "here."
33004 PRINT
33005 C$ = "" : INPUT ">"; C$ : PRINT
33100 IF C$ = "look" GOTO 33000;
33101 IF C$ = "west" OR C$ = "go west" GOTO 23000;
33102 IF C$ = "east" OR C$ = "go east" GOTO 43000;
33103 IF C$ = "north" OR C$ = "go north" GOTO 32000;
33104 IF C$ = "south" OR C$ = "go south" GOTO 34000;
33105 IF C$ = "open mailbox" GOTO 33201;
33106 IF C$ = "examine mailbox" GOTO 33201;
33107 IF C$ = "honk" GOTO 33207;
33108 IF C$ = "f" GOTO 33210;
33109 PRINT "404 command not found" : PRINT : GOTO 33005
33200 PRINT "bonk!" : PRINT : GOTO 33005
33201 PRINT "you open the mailbox with your bill."
33202 PRINT "there is a letter in the mailbox."
33203 PRINT
33204 PRINT "that letter is: g"
33205 PRINT
33206 GOTO 33005
33207 PRINT "honk... onk... onk... nk..."
33208 PRINT
33209 GOTO 33005
33210 PRINT "you pay respects"
33211 PRINT
33212 GOTO 33005

34000 REM 18 b - bear
34001 PRINT "there is a huge black bear here. you"
34002 PRINT "waddle cautiously along the wall, but"
34003 PRINT "he's distracted by a hive high above"
34004 PRINT "you."
34005 PRINT
34006 PRINT "a buzzing sound is coming from the"
34007 PRINT "hive, but no matter how tall you crane"
34008 PRINT "your neck you can't tell what's inside."
34009 PRINT
34010 PRINT "there are walls to the east and west."
34011 PRINT
34012 C$ = "" : INPUT ">"; C$ : PRINT
34100 IF C$ = "look" GOTO 34000;
34101 IF C$ = "west" OR C$ = "go west" GOTO 34200;
34102 IF C$ = "east" OR C$ = "go east" GOTO 34200;
34103 IF C$ = "north" OR C$ = "go north" GOTO 33000;
34104 IF C$ = "south" OR C$ = "go south" GOTO 35000;
34105 IF C$ = "honk" GOTO 34201;
34106 IF C$ = "f" GOTO 34204;
34107 PRINT "404 command not found" : PRINT : GOTO 34012
34200 PRINT "bonk!" : PRINT : GOTO 34012
34201 PRINT "honk... onk... onk... nk..."
34202 PRINT
34203 GOTO 34012
34204 PRINT "you pay respects"
34205 PRINT
34206 GOTO 34012

35000 REM 23 d - dacia duster
35001 PRINT "this square features a brand new royal"
35002 PRINT "blue left-hand-drive dacia duster. it"
35003 PRINT "even has go-faster stripes and the"
35004 PRINT "letter d emblazoned on the bonnet."
35005 PRINT
35006 PRINT "the keys are in the ignition and the"
35007 PRINT "engine has been left running."
35008 PRINT
35009 C$ = "" : INPUT ">"; C$ : PRINT
35100 IF C$ = "look" GOTO 35000;
35101 IF C$ = "west" OR C$ = "go west" GOTO 25000;
35102 IF C$ = "east" OR C$ = "go east" GOTO 45000;
35103 IF C$ = "north" OR C$ = "go north" GOTO 34000;
35104 IF C$ = "south" OR C$ = "go south" GOTO 35200;
35105 IF C$ = "drive car" GOTO 35201;
35106 IF C$ = "drive" GOTO 35201;
35107 IF C$ = "wedge accelerator" GOTO 35209;
35108 IF C$ = "accelerate" GOTO 35209;
35109 IF C$ = "press accelerator" GOTO 35209;
35110 IF C$ = "honk" GOTO 35214;
35111 IF C$ = "f" GOTO 35217;
35112 PRINT "404 command not found" : PRINT : GOTO 35009
35200 PRINT "bonk!" : PRINT : GOTO 35009
35201 PRINT "are you kidding?! you're a goose. you"
35202 PRINT "don't know how to drive a car."
35203 PRINT
35204 PRINT "however, you know exactly how to wedge"
35205 PRINT "the accelerator so the car drives into"
35206 PRINT "this nearby lake."
35207 PRINT
35208 GOTO 35009
35209 PRINT "the dacia duster sinks like a stone."
35210 PRINT "you waddle off proudly, a hard day's"
35211 PRINT "work done."
35212 PRINT
35213 GOTO 35009
35214 PRINT "honk... onk... onk... nk..."
35215 PRINT
35216 GOTO 35009
35217 PRINT "you pay respects"
35218 PRINT
35219 GOTO 35009

41000 REM 4 e - cassette tape
41001 PRINT "as you enter this room you spot a"
41002 PRINT "cassette tape on the floor. the"
41003 PRINT "handwritten label reads: 'untitled"
41004 PRINT "goose maze'."
41005 PRINT
41006 PRINT "there is a cassette player, and walls"
41007 PRINT "to the west and north."
41008 PRINT
41009 C$ = "" : INPUT ">"; C$ : PRINT
41100 IF C$ = "look" GOTO 41000;
41101 IF C$ = "west" OR C$ = "go west" GOTO 41200;
41102 IF C$ = "east" OR C$ = "go east" GOTO 51000;
41103 IF C$ = "north" OR C$ = "go north" GOTO 41200;
41104 IF C$ = "south" OR C$ = "go south" GOTO 42000;
41105 IF C$ = "examine cassette" GOTO 41201;
41106 IF C$ = "use cassette" GOTO 41201;
41107 IF C$ = "play cassette" GOTO 41201;
41108 IF C$ = "examine cassette tape" GOTO 41201;
41109 IF C$ = "use cassette tape" GOTO 41201;
41110 IF C$ = "play cassette tape" GOTO 41201;
41111 IF C$ = "examine tape" GOTO 41201;
41112 IF C$ = "use tape" GOTO 41201;
41113 IF C$ = "examine cassette player" GOTO 41201;
41114 IF C$ = "use cassette player" GOTO 41201;
41115 IF C$ = "examine player" GOTO 41201;
41116 IF C$ = "use player" GOTO 41201;
41117 IF C$ = "use cassette with player" GOTO 41201;
41118 IF C$ = "use cassette tape with player" GOTO 41201;
41119 IF C$ = "use tape with player" GOTO 41201;
41120 IF C$ = "honk" GOTO 41218;
41121 IF C$ = "f" GOTO 41221;
41122 PRINT "404 command not found" : PRINT : GOTO 41009
41200 PRINT "bonk!" : PRINT : GOTO 41009
41201 PRINT "you pick up the cassette with your"
41202 PRINT "bill, pluck it into the cassette"
41203 PRINT "player, and hit 'play'."
41204 PRINT
41205 PRINT "the player emits a terrible screeching"
41206 PRINT "sound:"
41207 PRINT
41208 PRINT "'eeeeeeeeeeeeeeeeeee-e-e-e-e-e-e-e-eeee"
41209 PRINT "eeeeeeeeeeeeeeeeee-e-e-e-e-e-eeeeeeeeee"
41210 PRINT "eeeeeee'"
41211 PRINT
41212 PRINT "why would anyone record such a dreadful"
41213 PRINT "tune? even ecstasy couldn't help you"
41214 PRINT "enjoy that. you wish you were listening"
41215 PRINT "to chill-e saviour instead."
41216 PRINT
41217 GOTO 41009
41218 PRINT "honk... onk... onk... nk..."
41219 PRINT
41220 GOTO 41009
41221 PRINT "you pay respects"
41222 PRINT
41223 GOTO 41009

42000 REM 9 k - grue
42001 PRINT "this square is pitch black. you are"
42002 PRINT "somewhat worried there might be"
42003 PRINT "carnivores that inhabit dark places and"
42004 PRINT "feed on unwitting geese."
42005 PRINT
42006 PRINT "there are walls to the south and east."
42007 PRINT
42008 C$ = "" : INPUT ">"; C$ : PRINT
42100 IF C$ = "look" GOTO 42000;
42101 IF C$ = "west" OR C$ = "go west" GOTO 32000;
42102 IF C$ = "east" OR C$ = "go east" GOTO 42200;
42103 IF C$ = "north" OR C$ = "go north" GOTO 41000;
42104 IF C$ = "south" OR C$ = "go south" GOTO 42200;
42105 IF C$ = "honk" GOTO 42201;
42106 IF C$ = "honk" GOTO 42211;
42107 IF C$ = "f" GOTO 42214;
42108 PRINT "404 command not found" : PRINT : GOTO 42008
42200 PRINT "bonk!" : PRINT : GOTO 42008
42201 PRINT "fortunately, you are a goose, and"
42202 PRINT "you're pretty sure those grues are more"
42203 PRINT "afraid of you than you are of them. you"
42204 PRINT "honk extremely loudly."
42205 PRINT
42206 PRINT "the chitter of terrified creatures"
42207 PRINT "recedes into the darkness. it sounds"
42208 PRINT "like they are saying 'kkkkkkkkkkkkkkk'."
42209 PRINT
42210 GOTO 42008
42211 PRINT "honk... onk... onk... nk..."
42212 PRINT
42213 GOTO 42008
42214 PRINT "you pay respects"
42215 PRINT
42216 GOTO 42008

43000 REM 14 R - White House
43001 PRINT "the door to the white house is boarded"
43002 PRINT "up, probably following the impeachment"
43003 PRINT "enquiry."
43004 PRINT
43005 PRINT "the letter r is scratched into the"
43006 PRINT "board."
43007 PRINT
43008 PRINT "there are walls to the north and south."
43009 PRINT
43010 C$ = "" : INPUT ">"; C$ : PRINT
43100 IF C$ = "look" GOTO 43000;
43101 IF C$ = "west" OR C$ = "go west" GOTO 33000;
43102 IF C$ = "east" OR C$ = "go east" GOTO 53000;
43103 IF C$ = "north" OR C$ = "go north" GOTO 43200;
43104 IF C$ = "south" OR C$ = "go south" GOTO 43200;
43105 IF C$ = "honk" GOTO 43201;
43106 IF C$ = "f" GOTO 43204;
43107 PRINT "404 command not found" : PRINT : GOTO 43010
43200 PRINT "bonk!" : PRINT : GOTO 43010
43201 PRINT "honk... onk... onk... nk..."
43202 PRINT
43203 GOTO 43010
43204 PRINT "you pay respects"
43205 PRINT
43206 GOTO 43010

44000 REM 19 i - something something maths
44001 PRINT "the square root of minus one is also"
44002 PRINT "here. you wave and it nods politely"
44003 PRINT "before going back to its work."
44004 PRINT
44005 C$ = "" : INPUT ">"; C$ : PRINT
44100 IF C$ = "look" GOTO 44000;
44101 IF C$ = "west" OR C$ = "go west" GOTO 44200;
44102 IF C$ = "east" OR C$ = "go east" GOTO 54000;
44103 IF C$ = "north" OR C$ = "go north" GOTO 44200;
44104 IF C$ = "south" OR C$ = "go south" GOTO 44200;
44105 IF C$ = "honk" GOTO 44201;
44106 IF C$ = "f" GOTO 44204;
44107 PRINT "404 command not found" : PRINT : GOTO 44005
44200 PRINT "bonk!" : PRINT : GOTO 44005
44201 PRINT "honk... onk... onk... nk..."
44202 PRINT
44203 GOTO 44005
44204 PRINT "you pay respects"
44205 PRINT
44206 GOTO 44005

45000 REM 24 a - atmosfear
45001 PRINT "this square contains one (1) spoopy"
45002 PRINT "boi, who wears a cowl and smells"
45003 PRINT "slightly of rotting cabbage."
45004 PRINT
45005 PRINT "'what's the first letter of my game?!"
45006 PRINT "answer me, maggots!' he wails. you honk"
45007 PRINT "at him, but unfortunately the videotape"
45008 PRINT "is the same each time so he is"
45009 PRINT "unresponsive."
45010 PRINT
45011 C$ = "" : INPUT ">"; C$ : PRINT
45100 IF C$ = "look" GOTO 45000;
45101 IF C$ = "west" OR C$ = "go west" GOTO 35000;
45102 IF C$ = "east" OR C$ = "go east" GOTO 55000;
45103 IF C$ = "north" OR C$ = "go north" GOTO 45200;
45104 IF C$ = "south" OR C$ = "go south" GOTO 45200;
45105 IF C$ = "honk" GOTO 45201;
45106 IF C$ = "f" GOTO 45204;
45107 PRINT "404 command not found" : PRINT : GOTO 45011
45200 PRINT "bonk!" : PRINT : GOTO 45011
45201 PRINT "honk... onk... onk... nk..."
45202 PRINT
45203 GOTO 45011
45204 PRINT "you pay respects"
45205 PRINT
45206 GOTO 45011

51000 REM 5 a - abul-abbas
51001 PRINT "this square contains a huge something,"
51002 PRINT "which is pacing to and fro impatiently"
51003 PRINT "and waving its trunk about. you can't"
51004 PRINT "tell what it is because it's been"
51005 PRINT "gift-wrapped."
51006 PRINT
51007 PRINT "from one enormous ear hangs a tag: 'to"
51008 PRINT "charlie, merry xmas 808! lotsa love,"
51009 PRINT "harry al-rashid.'"
51010 PRINT
51011 PRINT "there are walls to the north and east."
51012 PRINT
51013 C$ = "" : INPUT ">"; C$ : PRINT
51100 IF C$ = "look" GOTO 51000;
51101 IF C$ = "west" OR C$ = "go west" GOTO 41000;
51102 IF C$ = "east" OR C$ = "go east" GOTO 51200;
51103 IF C$ = "north" OR C$ = "go north" GOTO 51200;
51104 IF C$ = "south" OR C$ = "go south" GOTO 52000;
51105 IF C$ = "unwrap paper" GOTO 51201;
51106 IF C$ = "tear paper" GOTO 51201;
51107 IF C$ = "unwrap" GOTO 51201;
51108 IF C$ = "rip paper" GOTO 51201;
51109 IF C$ = "unwrap present" GOTO 51201;
51110 IF C$ = "open gift" GOTO 51201;
51111 IF C$ = "open gift wrap" GOTO 51201;
51112 IF C$ = "honk" GOTO 51210;
51113 IF C$ = "f" GOTO 51213;
51114 PRINT "404 command not found" : PRINT : GOTO 51013
51200 PRINT "bonk!" : PRINT : GOTO 51013
51201 PRINT "you tear aside the paper with your"
51202 PRINT "beak. it's an elephant! for you! how"
51203 PRINT "considerate. this is a much better"
51204 PRINT "present than a commodore 64."
51205 PRINT
51206 PRINT "you notice the elephant wears an ornate"
51207 PRINT "saddle embroidered with the letter a."
51208 PRINT
51209 GOTO 51013
51210 PRINT "honk... onk... onk... nk..."
51211 PRINT
51212 GOTO 51013
51213 PRINT "you pay respects"
51214 PRINT
51215 GOTO 51013

52000 REM 10 i - dan, pete and phil
52001 PRINT "you enter what appears to be an office"
52002 PRINT "cafeteria. a sign on the wall to the"
52003 PRINT "west reads 'data connections'. there is"
52004 PRINT "another wall to the east."
52005 PRINT
52006 PRINT "three thick-haired young men are"
52007 PRINT "crowded around a table, talking in"
52008 PRINT "hushed voices."
52009 PRINT
52010 C$ = "" : INPUT ">"; C$ : PRINT
52100 IF C$ = "look" GOTO 52000;
52101 IF C$ = "west" OR C$ = "go west" GOTO 52200;
52102 IF C$ = "east" OR C$ = "go east" GOTO 52200;
52103 IF C$ = "north" OR C$ = "go north" GOTO 51000;
52104 IF C$ = "south" OR C$ = "go south" GOTO 53000;
52105 IF C$ = "eavesdrop" GOTO 52201;
52106 IF C$ = "listen" GOTO 52201;
52107 IF C$ = "listen to men" GOTO 52201;
52108 IF C$ = "listen to dan" GOTO 52201;
52109 IF C$ = "listen to pete" GOTO 52201;
52110 IF C$ = "listen to phil" GOTO 52201;
52111 IF C$ = "listen to conversation" GOTO 52201;
52112 IF C$ = "honk" GOTO 52214;
52113 IF C$ = "f" GOTO 52217;
52114 PRINT "404 command not found" : PRINT : GOTO 52010
52200 PRINT "bonk!" : PRINT : GOTO 52010
52201 PRINT "'so what could we call it then? o -"
52202 PRINT "softwore?'"
52203 PRINT
52204 PRINT "'sounds like a used clothing company. e"
52205 PRINT "- softwere?'"
52206 PRINT
52207 PRINT "'nah, makes us sound like have-beens. u"
52208 PRINT "- softwure?'"
52209 PRINT
52210 PRINT "'i - i think there must be a right"
52211 PRINT "answer, but it's eluding me right now.'"
52212 PRINT
52213 GOTO 52010
52214 PRINT "honk... onk... onk... nk..."
52215 PRINT
52216 GOTO 52010
52217 PRINT "you pay respects"
52218 PRINT
52219 GOTO 52010

53000 REM 15 e - mosquitos
53001 PRINT "there is a thin droning sound here. it"
53002 PRINT "is utterly infuriating. it drills into"
53003 PRINT "your skull."
53004 PRINT
53005 PRINT "eeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeee"
53006 PRINT
53007 PRINT "suddenly your wings are covered in"
53008 PRINT "insect bites and you have no idea how"
53009 PRINT "they got there."
53010 PRINT
53011 PRINT "there's a white house to the west of"
53012 PRINT "you, and walls to the south and east."
53013 PRINT
53014 C$ = "" : INPUT ">"; C$ : PRINT
53100 IF C$ = "look" GOTO 53000;
53101 IF C$ = "west" OR C$ = "go west" GOTO 43000;
53102 IF C$ = "east" OR C$ = "go east" GOTO 53200;
53103 IF C$ = "north" OR C$ = "go north" GOTO 52000;
53104 IF C$ = "south" OR C$ = "go south" GOTO 53200;
53105 IF C$ = "honk" GOTO 53201;
53106 IF C$ = "f" GOTO 53204;
53107 PRINT "404 command not found" : PRINT : GOTO 53014
53200 PRINT "bonk!" : PRINT : GOTO 53014
53201 PRINT "honk... onk... onk... nk..."
53202 PRINT
53203 GOTO 53014
53204 PRINT "you pay respects"
53205 PRINT
53206 GOTO 53014

54000 REM 20 r - picasso
54001 PRINT "you are in what looks like an artist's"
54002 PRINT "studio - there are walls to the north"
54003 PRINT "and east."
54004 PRINT
54005 PRINT "a moldovan musician is working at an"
54006 PRINT "easel. he has a mobile phone. there is"
54007 PRINT "a landline phone on the wall."
54008 PRINT
54009 C$ = "" : INPUT ">"; C$ : PRINT
54100 IF C$ = "look" GOTO 54000;
54101 IF C$ = "west" OR C$ = "go west" GOTO 44000;
54102 IF C$ = "east" OR C$ = "go east" GOTO 54200;
54103 IF C$ = "north" OR C$ = "go north" GOTO 54200;
54104 IF C$ = "south" OR C$ = "go south" GOTO 55000;
54105 IF C$ = "examine easel" GOTO 54201;
54106 IF C$ = "use easel" GOTO 54201;
54107 IF C$ = "examine phone" GOTO 54208;
54108 IF C$ = "use phone" GOTO 54208;
54109 IF C$ = "honk" GOTO 54222;
54110 IF C$ = "f" GOTO 54225;
54111 PRINT "404 command not found" : PRINT : GOTO 54009
54200 PRINT "bonk!" : PRINT : GOTO 54009
54201 PRINT "the painting on the easel appears to be"
54202 PRINT "a collage of geometrical shapes; it's"
54203 PRINT "too high up for you to get a proper"
54204 PRINT "look; the moldovan musician shoos you"
54205 PRINT "away."
54206 PRINT
54207 GOTO 54009
54208 PRINT "you peck away at the landline phone,"
54209 PRINT "dialling the moldovan musician's phone"
54210 PRINT "number. his mobile phone rings. he"
54211 PRINT "picks up the phone:"
54212 PRINT
54213 PRINT "'alo? alo! sunt eu, picasso! mi-ai dat"
54214 PRINT "beep! si sunt voinic!'"
54215 PRINT
54216 PRINT "while he is distracted, you knock over"
54217 PRINT "the easel and examine the painting;"
54218 PRINT "it's a portrait, but very reminiscent"
54219 PRINT "of the letter r."
54220 PRINT
54221 GOTO 54009
54222 PRINT "honk... onk... onk... nk..."
54223 PRINT
54224 GOTO 54009
54225 PRINT "you pay respects"
54226 PRINT
54227 GOTO 54009

55000 REM 25 y - idk existential dread
55001 PRINT "as you enter this square you are"
55002 PRINT "overcome with an intense existential"
55003 PRINT "angst. what are you doing in this maze?"
55004 PRINT
55005 PRINT "have you been placed here by some sort"
55006 PRINT "of avian higher power? are you merely"
55007 PRINT "the pawn in some infernal,"
55008 PRINT "incomprehensible cosmic game?"
55009 PRINT
55010 PRINT "what? who? where? when?"
55011 PRINT
55012 PRINT "there are walls to the south and east."
55013 PRINT
55014 C$ = "" : INPUT ">"; C$ : PRINT
55100 IF C$ = "look" GOTO 55000;
55101 IF C$ = "west" OR C$ = "go west" GOTO 45000;
55102 IF C$ = "east" OR C$ = "go east" GOTO 55200;
55103 IF C$ = "north" OR C$ = "go north" GOTO 54000;
55104 IF C$ = "south" OR C$ = "go south" GOTO 55200;
55105 IF C$ = "honk" GOTO 55201;
55106 IF C$ = "f" GOTO 55204;
55107 PRINT "404 command not found" : PRINT : GOTO 55014
55200 PRINT "bonk!" : PRINT : GOTO 55014
55201 PRINT "honk... onk... onk... nk..."
55202 PRINT
55203 GOTO 55014
55204 PRINT "you pay respects"
55205 PRINT
55206 GOTO 55014
