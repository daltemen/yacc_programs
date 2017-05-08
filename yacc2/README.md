lex calci.l
yacc -d calci.y
cc lex.yy.c y.tab.c -ll
./a.out
