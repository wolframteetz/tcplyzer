%{
#include <stdio.h>
%}
%option noyywrap
%%
[ \n\t\r]+0x.+[\n]                   printf("%s",yytext);
[ \n\t\r]+[0-9]+\.[0-9]+\..+[\n]     printf("");
[0-9]+:[0-9]+:.+[\n]                 printf("NEWRECORD");
%%
int main()
   {
   yylex();
   }

