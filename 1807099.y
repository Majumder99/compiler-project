%{
	#include<stdio.h>
	#include<stdlib.h>
	#include<math.h>
	#include<string.h>
	#include<stdarg.h>
	int yylex();
	void yyerror(char *s);
%}

/* bison declarations */

%union 
{
	 int number;
     char *string;
}

%token SCOM INCLUDE SOURAV FLB FRB SLB SRB TLB TRB INT FLOAT DOUBLE STRING CHAR IF ELIF ELSE FOR WHILE RETURN VOID SEMICOLON COLON SWITCHING STRUCT CASE STOP RUNNING EQUAL DEQUAL PLUS MINUS DIVISION PINC MINC PERCENTAGE PRINTING SCANNING POWER GREATER LESSER KOMMA DQ SQ SQUARE SIN COS TAN LOG DIGIT VAR
/* Grammar rules and actions follow.  */

%%


program: INCLUDE SOURAV COLON TLB codepart TRB
			;   
codepart: /* NULL */
	| codepart statement
	;
statement: SEMICOLON		{}	
	| declaration SEMICOLON			 { printf("Declaration\n"); }
	;

declaration: TYPE ID 
	   		;
TYPE: INT 
	| FLOAT
	| DOUBLE
	| STRING
	| CHAR
	;

ID: ID KOMMA VAR { printf("new var");}
	| VAR {printf("variable");}
	;
%%


void yyerror(char *s){
	printf( "%s\n", s);
}
int yywrap()
{
	return 1;
}

int main()
{
	// freopen("input.txt","r",stdin);
	// freopen("output.txt","w",stdout);
	yyparse();

	// fclose(yyin);
 	// fclose(yyout);
    
	return 0;
}