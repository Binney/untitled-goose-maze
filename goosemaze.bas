
0 rem donkeyland engine v2 dev version
10 poke 53280,0:poke 53281,0:print"{clear}{green}";:gosub 1000
20 on a gosub 500
30 print">"c$;:gosub 550
40 gosub 600
50 goto 20
499 end
500 rem print location name, new line and description:
501 print ln$(r);r$;lo$(r,z);lo$(r,o)
510 return
550 rem custom keyboard scanner:
551 get b$: on -(b$="") goto 551: on -(b$<>r$) goto 552: on -(a$="") goto 551: print" ": return
552 on -(len(a$+b$)>c and b$<>x$) goto 551: for i=z to x: if b$=f$(i) then a$=a$+fc$(i): print a$;c$;
553 next i: if b$=x$ and len(a$)>z then a$=left$(a$, len(a$)-o): print b$c$;
554 on -(b$<" " or b$>"]") goto 551: on -(b$=q$) gosub 555: a$=a$+b$: print b$c$;:goto 551
555 print q$x$;: return
600 rem command parser
601 restore: a=z: b=z
602 for i=z to x
603 read b$: if left$(a$,len(b$))=b$ then b=i+o
604 next i
605 a$="":on b gosub 610,610,610,610,620,630,640,650:if b then return
606 print"i don't understand that"r$"please try again"r$:return
610 b$=mid$(lr$(r),b,o):if b$=" "then a=z:print"there is no exit in that direction"r$:return
611 r=val(b$):a=o:s=s+o:print:return
620 print "examination command": return
630 print "get command": return
640 print "use command": return
650 restore:print "donkeyland engine v2.0.0a"r$"(c) mmxiv donkeysoft"r$"current number of steps:"s;r$
651 print "game commands are as follows:"
652 for i=z to x
653 read b$: print b$h$(i)
654 next i:return
999 end
1000 rem initialisation
1001 dim i$(2): rem inventory
1002 dim it$(3, 4): rem items and related rooms
1003 dim lo$(4, 1): rem 5 locations & up to 510 character length descriptions
1004 dim ln$(4): rem location names
1005 dim sm$(4): rem special moves
1006 dim ht$(4): rem hints or a further description
1007 dim a$, b$, a, b, c, i, o, r, s, t, x, y, z: rem game vars
1008 dim lr$(4): rem relate locations
1009 dim f$(7), fc$(7): rem functoion keys
1010 dim h$(7): rem details of help commands
1011 rem string constants:
1012 n$="north": s$="south": e$="east": w$="west": c$="{reverse on} {reverse off}{left}": x$=chr$(20)
1013 d$=" and ":  t$="the ": y$="you ": r$=chr$(13): q$=chr$(34): p$="   "
1014 rem numeric constants:
1015 c=30: o=1: t=2: x=7: y=3
1020 rem function keys:
1021 for i=z to x
1022 read b$: f$(i)=chr$(133+i): fc$(i)=b$
1023 next i
1024 rem default values set:
1025 for i=z to t
1026 i$(i)="nothing"
1027 next i
1028 ln$(z)="library": rem location name & details
1029 lo$(z,z)=p$+"you are in "+t$+ln$(z)+". there is a"+r$+"bookcase on "+t$+"wall to "+t$+n$+" which,unsurprisingly, contains lots of books. each seems to have been meticulously"+r$+"sorted from 'a' at "+t$+"top left to 'z'  on "+t$+"bottom right. there"
1030 lo$(z,z)=lo$(z,z)+" is a movable ladder to acce"
1031 lo$(z,o)="ss those titles that are  out of reach. in front of "+t$+"bookcase  is a table which is used for "+t$+"purposeof reading"+d$+"related activities. thereis a book laid open on it with some"+r$+"notes written down on a piece of paper. to "
1032 lo$(z,o)=lo$(z,o)+t$+s$+" is an exit."
1033 ln$(o)="communal area"
1034 lo$(o,z)=p$+t$+ln$(o)+" is well lit with"+r$+"three comfy sofas each with coffee"+r$+"tables to "+t$+"sides."+r$+"there is a definite female touch as the sofas are strewn with cushions;"+r$+"cup-stained magazines such as "+q$+"woman's"+r$+"zone"
1035 lo$(o,z)=lo$(o,z)+q$+d$+q$+"celeb diets weekly"+q$+" are"+r$+"visible. "
1036 lo$(o,o)=t$+"decor is mostly shades"+r$+"of purple."+r$+"to "+t$+e$+" is a garden, "+w$+" is "+t$+r$+"kitchen, "+n$+" is "+t$+ln$(z)+d$+s$+" is the dining room."
1045 ln$(t)="kitchen"
1046 lo$(t,z)=""
1047 lo$(t,o)=""
1048 ln$(y)="garden"
1049 lo$(y,z)=""
1050 lo$(y,o)=""
1051 ln$(4)="dining room"
1052 lo$(4,z)=""
1053 lo$(4,o)=""
1054 rem relating the locations (NSEW):
1055 lr$(z)=" 1  "
1056 lr$(o)="0432"
1057 lr$(t)="  1 "
1058 lr$(y)="   1"
1059 lr$(4)="1   "
1060 rem help command details:
1061 b$=" - ":a$="travels ":h$(z)=b$+a$+n$:h$(o)=b$+a$+s$:h$(t)=b$+a$+e$:h$(y)=b$+a$+w$
1062 h$(4)="[object]"+b$+"examine item"
1063 h$(5)="[object]"+b$+"collect item"
1064 h$(6)="[object]"+b$+"use item"
1065 h$(x)=b$+"game information"
1999 a$="":a=o:return
9998 rem custom keyboard inputs for the function keys:
9999 data "go north","go south","go east","go west","examine ","get ","use ","help"
