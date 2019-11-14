%{
#include<stdio.h>	
%}

%token ID NUMBER
%left '+' '-'
%left '*' '/'

%%
stmt:expr
	;
expr: expr '+' expr 
	| expr '-' expr
	| expr '*' expr
	| expr '/' expr
	| '(' expr ')'
	| NUMBER
	| ID	
	;
%%

int main()
{
	printf("Enter Expression :\n ");
	yyparse();
	printf("This is a valid Expression");
	exit(0);
}

yywrap(){}
yyerror()
{
printf("Error!");
exit(0);
}
