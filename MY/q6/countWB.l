%{
	int countWords=0; 
	int countblank=0; 	
%}

%%

" " {
countblank++;
}

\t {
countblank+=3;
}

[a-zA-Z0-9]+ {
countWords++;
}



%%

int main(int argc, char* args[])
{
	yyin = fopen("test.txt","r");
	yylex();

	printf("Total number of Words are : %d\n Total number of Blank Spaces are: %d", countWords,countblank);
	fclose(yyin);
	return 0;
}

int yywrap()
{
	return 1;
}