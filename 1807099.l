%{
    #include<stdio.h>
	#include<string.h>
    #include<math.h>
	#include<stdlib.h>
%}



/*RE and Action*/
/* unary_operator "inc"|"dec" */

%%
identifiers "variable_"[a-zA-Z]([a-zA-Z0-9])*
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
"@import" {printf("#include");}
"define_korlam" {printf("#define");}
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

 

"brk"    {   return BREAK;     }
"check"      { return CASE;      }
"incident"      { return SWITCH;	}
"nop"     {  return DEFAULT; 	}
"wlp" { return WHILE;}
"flt"	{ return FLOAT; }
"ch"	{ return CHAR; }
[:]     { return COL;}
[0-9]+	{ 
		yylval.number = atoi(yytext);
		return NUM;
	}
"flp"   { return FOR;}	
"fop"	{ return LP; }
"fcp"	{ return RP; }
"$"	{ return CM; }
"#"	{ return SM; }
"addition"	{ return PLUS;}
"subtraction"	{ return MINUS; }
"multiplication"	{ return MULT; }
"division"	{ return DIV; }
"exponential"	{ return POW; }
[@]		{ return ASSIGN;  }
"grt"	{ return GT; }
"lrt"	{ return LT; }

{identifiers} {
	 yylval.string=strdup(yytext);
	 return VAR;
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