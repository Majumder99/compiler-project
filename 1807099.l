%{
    #include<stdio.h>
	#include<string.h>
    #include<math.h>
	#include<stdlib.h>
%}



/*RE and Action*/
/* unary_operator "inc"|"dec" */

%%
identifiers "cholok_"[a-zA-Z]([a-zA-Z0-9])*
single_line_comment [/][/].*
multiple_line_comment [ ]*[/]"first_comment"[a-zA-Z0-9!@#*(){}_+-,.:\|?><\n\t ]*"last_comment"[/]




{single_line_comment} {
	printf("This is single line comment\n");

}
{multiple_line_comment} {
	printf("This is multiple line comment");
}

// {unary_operator}   {return inc;}
"first_left_bracket"	 { printf("("); }
"first_right_bracket"	  { printf(")"); }
"second_left_bracket"	 { printf("{"); }
"second_right_bracket"	  { printf("}"); }
"third_left_bracket"	 { printf("["); }
"third_right_bracket"	  { printf("]"); }
"import" {printf("include");}
"define_korlam" {printf("define");}
"asol_number"	{ printf("int"); }
"vongnangso_number"	{ printf("float"); }
"double_vongnangso_number"	{ printf("double"); }
"string_literal"	{ printf("string"); }
"char_literal"	{ printf("char"); }
"jodi" {printf("if");}
"jodi_na" {printf("else");}
"jodi_na_tahole" {printf("else if");}
"jonno" {printf("for");}
"opekkhoman" {printf("while");}
"karjokrom" {printf("function");}
"firiye_dilam" {printf("return");}
"kichu_nai" {printf("void");}
"semi_colon" {printf(";");}
"size_of_something" {printf("sizeof");}
"change_koro" {printf("switch");}
"struct_funtion" {printf("struct");}
"number_point" {printf("case");}
"colon" {printf(":");}
"thamo_eibar" {printf("break");}
"chalaya_jao" {printf("continue");}
"pointer" {printf("*");}
"soman_chinho" {printf("=");}
"plus_sign" {printf("+");}
"minus_sign" {printf("-");}
"plus_increment" {printf("++");}
"minus_increment" {printf("--");}
"ampersand" {printf("&");}
"percentage" {printf("%c", 37);}
"hashinclude" {printf("#");}

"exclamatory_sign" {printf("!");}
"ouput_dekho" {printf("printf");}
"input_dao" {printf("scanf");}
"exponential" {printf("^");}

[0-9]+	{ 
	int n = atoi(yytext);
	printf("%d", n);
}

{identifiers} {
	char* a=strdup(yytext);
	printf("%s", a);
}

"iff"		{ return IF;}
"oriff"	{ return ELIF; }
"or"		{ return ELSE;}

"mfun "[A-Za-z]+	{ return MAIN; }

[ \t\n]*	

.	{
		yyerror("Unknown Character.\n");
	}

%%


int yywrap(){}

int main(){
    yyin = freopen("input.txt","r",stdin);
	yyout = freopen("output.txt","w",stdout);
}