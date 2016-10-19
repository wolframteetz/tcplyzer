%{
#include <stdio.h>
%}
%option noyywrap
%%
a[\n]    printf("NUMBER\n");
b[\n]    printf("WORD\n");
c[\n]   printf("WORD\n");
%%
int main()
   {
   yylex();
   }

