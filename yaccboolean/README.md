lex bool.l && yacc -d bool.y
cc lex.yy.c y.tab.c -ll
1&&1
Result : 1
1||0
Result : 1
(5<6)&&(8==8)
Result : 1
