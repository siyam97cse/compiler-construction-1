%%
[A-Z][a-z0-9]* {printf("Valid ID: %s\n", yytext);}
[ \t\n]+        ; /* Ignore whitespace */
.  {printf("Invalid character: %s\n", yytext);}
%%
int yywrap()
{
return 1;
}
int main()
{
printf("ID recognition\n");
yylex();
return 0;
}

/* Detect IDs */