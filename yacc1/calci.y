%{
#include<stdio.h>
int yylex(void);
%}
%union
{
 float dval;
}
%token <dval> NUMBER
%left '+' '-'
%left '*' '/'
%nonassoc UMINUS
%type <dval> exp
%%
state : exp {printf("Respuesta = %fn",$1);}
       ;
exp : NUMBER
     | exp '+' exp {$$=$1+$3;}
 | exp '*' exp {$$=$1*$3;}
 ;
%%

