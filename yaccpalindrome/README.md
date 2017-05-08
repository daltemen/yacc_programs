lex Q.l
yacc -d Q.y
cc  -c lex.yy.c y.tab.c
cc -o a.out lex.yy.o y.tab.o -lfl
./a.out 
