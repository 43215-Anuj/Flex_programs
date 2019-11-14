%{
	
%}

key int|float|double|void|char|string|cout|cin|switch|if
integer [0-9]+

%%

{key} {
printf("%s : Keyword\n",yytext);
}

{integer} {	
printf("%s : integer\n ",yytext);	
}

[0-9]+\.[0-9]+ {
printf("%s : float \n",yytext);
}

[\+|-|%|/|=|^|<|>] { 
printf("%s : Operator \n",yytext);
}

[\/\*.*[\n]*.*\*\/] {
printf("%s : MultiLine Comment\n", yytext);
}

[\/\/].* {
printf("%s : Single line Comment\n", yytext);
}

[_a-zA-Z][_a-zA-Z0-9]*	{
printf("%s : Identifier\n", yytext);
}

%%

int main(int argc, char* args[])
{
	yyin=fopen(args[1],"r");
	yylex();
	fclose(yyin);
	return 0;
}

int yywrap(){
	return 1;
}