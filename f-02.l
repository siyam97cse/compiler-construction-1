%%
[+]?[0-9]+ {printf("positive integer\n");}
[-]?[0-9]+ {printf("negative integer\n");}
[+-]?[0-9]*[.][0-9]+ {printf("floating number\n");}
%%
int yywrap()
{
return 1;
}
int main()
{
printf("floating number recognition\n");
yylex();
return 0;
}

/* Detect Floating-Point Numbers */