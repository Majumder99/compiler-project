%{
    #include<stdio.h>
	#include<string.h>
    #include<math.h>
	#include<stdlib.h>
%}

variables_of_mine "cholok_"[a-zA-Z]([a-zA-Z0-9])*[-]
single_line_comment [_][_].*
multiple_line_comment [/]"first_comment"[a-zA-Z0-9!@#*(){}_+-,.:\|?><\n\t ]*"last_comment"[/]

%%

{single_line_comment} {
	printf("//This is single line comment");

}
{multiple_line_comment} {
	printf("/*This is multiple line comment*/");
}
"stdioH" {printf("stdio.h");}
"stringH" {printf("string.h");}
"mathH" {printf("math.h");}
"stdlibH" {printf("stdlib.h");}
"first_left_bracket"	 { printf("("); }
"first_right_bracket"	  { printf(")"); }
"second_left_bracket"	 { printf("{"); }
"second_right_bracket"	  { printf("}"); }
"third_left_bracket"	 { printf("["); }
"third_right_bracket"	  { printf("]"); }
"import" {printf("include");}
"define_korlam" {printf("define");}
"asol"	{ printf("int"); }
"vongnangso_number"	{ printf("float"); }
"double_vongnangso_number"	{ printf("double"); }
"string_literal"	{ printf("string"); }
"char_literal"	{ printf("char"); }
"jodi" {printf("if");}
"jodi_na" {printf("else");}
"jodi_na_tahole" {printf("else if");}
"jonno" {printf("for");}
"opekkhoman" {printf("while");}
"firiye_dilam" {printf("return");}
"kichu_nai" {printf("void");}
"semi_colon" {printf(";");}
"colon" {printf(":");}
"size_of_something" {printf("sizeof");}
"change_koro" {printf("switch");}
"struct_function" {printf("struct");}
"number_point" {printf("case");}
"thamo_eibar" {printf("break");}
"chalaya_jao" {printf("continue");}
"pointer" {printf("*");}
"soman_chinho" {printf("=");}
"double_soman_chinho" {printf("==");}
"plus_sign" {printf("+");}
"minus_sign" {printf("-");}
"vagkoro" {printf("/");}
"plus_increment" {printf("++");}
"minus_increment" {printf("--");}
"ampersand" {printf("&");}
"percentage" {printf("%c", 37);}
"hash" {printf("#");}
"exclamatory_sign" {printf("!");}
"output_dekho" {printf("printf");}
"input_dao" {printf("scanf");}
"exponential" {printf("^");}
"asol_function" {printf("main");}
"greater_than" {printf("%c", 62);}
"less_than" {printf("%c", 60);}
"komma" {printf(",");}
"double_qoute" {printf("\"");}
"single_qoute" {printf("\'");}
"borgomul_value"   {printf("sqrt()");}
"sine_value"    {printf("sin()");}
"cosine_value"    {{printf("cos()");}}
"tangent_value"   {printf("tan()");}
"logarithm_value"    {printf("log()");}
"power_value"    {printf("pow()");}
" " {printf(" ");}

[0-9]+ { 
	int n = atoi(yytext);
	printf("%d", n);
}

{variables_of_mine} {

	char* a = yytext;
    char s[50];
    int j = 0;
    for(int i = 7 ; a[i] != '-' ; i++){
        s[j++] = a[i];
    }
    s[j] = '\0';
	printf("%s", s);
}
[a-zA-Z] {printf("%s", yytext);}

. {printf("Unknown character");}

%%


int yywrap(){}

int main(){
    yyin = freopen("input.txt","r",stdin);
	yyout = freopen("output.txt","w",stdout);
    yylex();
}