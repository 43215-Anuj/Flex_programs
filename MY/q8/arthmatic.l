%{
	int a=0, s=0, m=0, d=0, ob=0 ,cb=0;
	int flaga=0,flags=0,flagm=0, flagd=0;
%}

id [_a-zA-Z][a-zA-Z0-9]*

%%
{id} {printf("%s is an Identifier\n",yytext);}
[+] {a++; flaga++;}
[-] {s++; flags++;}
[*] {m++; flagm++;}
[/] {d++; flagd++;}
[(] {ob++;}
[)] {cb++;}
[ |\n] {return 0;}
.  	{return 0;}
%%

int main()
{
	printf("Enter an expression :\n ");
	yylex();
	if((ob-cb)==0)
	{	
		printf("This is a valid expression\n");
		printf(" Add=%d\n Sub=%d\n Mul=%d\n Div=%d\n", a,s,m,d);
	}
	else
	{
		printf("Invalid Expression");
	}
	

	return 0;
}

int yywrap(){
	return 1;
}

