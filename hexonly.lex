%{
#include <stdio.h>
%}
%option noyywrap
%%
NEWRECORD                            printf("\n");
[ ][0-9a-f][0-9a-f][0-9a-f][0-9a-f]  printf("%s",yytext);
.                                    printf("");
[\n]                                 printf("");
%%
int main()
   {
   yylex();
   }

