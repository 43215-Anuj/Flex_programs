%{	#include<stdio.h>
	char i,j;	
%}

%%

[a-zA-Z]+	{
				for(i='d';i>='a';i--)
				{
					for(j='a';j<=i;j++)
					{
						printf("%c ",j);
					}
					printf("\n");
				}
}

%%

int main()
{
	yylex();
	return 0;
}

int yywrap()
{
	return 1;
}
