%{
#include<string.h>
int maxlen=0;	
char* maxWord=0;
%}
%%
[ ] {}
[a-zA-Z]+ {
if(yyleng>maxlen){
maxlen=yyleng;
maxWord=yytext;
printf("%s\n",maxWord);
}
}
%%

int main(int args, char* argc[])
{
yyin = fopen(argc[1],"r");
yylex();
maxWord[maxlen]='\0';
printf("String with max length is %s whose length is %d",maxWord,maxlen);
fclose(yyin);
return 0;
}

int yywrap(){
return 1;
}