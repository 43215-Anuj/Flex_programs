%{
#include<stdio.h>	
%}

%token A B
%%
{a} {return A;}
{b} {return B;}
[ \n]+ {return yytext[0];}
%%