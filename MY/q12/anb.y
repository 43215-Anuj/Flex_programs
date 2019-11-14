%{
	#include<stdio.h>
%}

%token A B NL
%%

stmt: A A S B NL{
				printf("valid String");
				exit(0);
			}
	;
S: 	S A
	|
	;
%%

int main()
{
	printf("Enter String :");
	yyparse();
	exit(0);
}

int yywrap()
{
	return 0;
}

int yyerror()
{
	printf("Invalid");
	exit(0);
}