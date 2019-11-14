%{
	#include<stdio.h>	
	valid=1;
%}
%token A B
%%
str:S'\n' 	{return 0;} 
S: 	A S B
	|
	;
%%

int main()
{
	printf("Enter string: \n");
	yyparse();
	if (valid==1)
	{
	printf("This is a valid String");
	}
	exit(0);
}

yywrap(){}
yyerror(){
	printf("Invalid");
	valid=0;
}