%{
	int countChar=0;
	int countLine=0;
%}

%%
.  {
countChar++;
}

\n {
countLine++;
countChar++;
}

%%

int main(int args, char *argv[])
{
	yyin = fopen("sample.txt","r");
	yylex();
	printf("Number of characters are: %d \nNumber of Lines are: %d",countChar,countLine);	
	return 0;
}

int yywrap()
{
	return 1;
}