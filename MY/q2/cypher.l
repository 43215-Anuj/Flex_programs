%{

%}

%%
[a-zA-Z] {
			printf("%c" , yytext[0]+3);
}
%%

int main(int args, char *argc[])
{
	yyin = fopen("sample.txt","r");
	printf("The Code Generated is: ");
	yylex();
}

int yywrap()
{
	return 1;
}