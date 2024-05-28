%{
  int line_count = 0;
%}

%%
\n {line_count++;}
. ;
%%

int yywrap(){
    return 1;
}

int main(){

    yylex();
    printf("Number of lines: %d\n",line_count);
    return 0;


}