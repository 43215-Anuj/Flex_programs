%{
#include<math.h>
#include "y.tab.h"	
extern yylval;
%}

%%
[a] {return A;}
[b] {return B;}
[ |\n]+ {return yytext[0];}
%%