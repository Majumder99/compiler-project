%{
	#include<stdio.h>
	#include<stdlib.h>
	#include<math.h>
	#include<string.h>
	#include<stdarg.h>
	int yylex();
	void yyerror(char *s);
	extern FILE *yyin,*yyout;
%}

/* bison declarations */

%union 
{
	 int number;
     char *string;
}
%token <string> VAR
%type <number> STATEMENT
%token <number> DIGIT
%token SCOM INCLUDE SOURAV FLB FRB SLB SRB TLB TRB INT FLOAT DOUBLE STRING CHAR IF ELIF ELSE FOR WHILE RETURN VOID SEMICOLON COLON SWITCHING STRUCT CASE STOP RUNNING EQUAL DEQUAL PLUS MINUS DIV PINC MINC MOD PRINTING SCANNING POWER GREATER LESSER KOMMA DQ SQ SQUARE SIN COS TAN LOG MUL
%nonassoc SCOM
%nonassoc INCLUDE
%nonassoc SOURAV
%nonassoc FLB
%nonassoc FRB
%nonassoc SLB
%nonassoc SRB
%nonassoc TLB
%nonassoc TRB
%nonassoc INT
%nonassoc FLOAT
%nonassoc DOUBLE
%nonassoc STRING
%nonassoc CHAR
%nonassoc IF
%nonassoc ELIF
%nonassoc ELSE
%nonassoc FOR
%nonassoc WHILE
%nonassoc RETURN
%nonassoc VOID
%nonassoc SEMICOLON
%nonassoc COLON
%nonassoc SWITCHING
%nonassoc STRUCT
%nonassoc CASE
%nonassoc STOP
%nonassoc RUNNING
%nonassoc DEQUAL
%nonassoc PINC
%nonassoc MINC
%nonassoc PRINTING
%nonassoc SCANNING
%nonassoc POWER
%nonassoc KOMMA
%nonassoc DQ
%nonassoc SQ
%nonassoc SQUARE
%nonassoc SIN
%nonassoc COS
%nonassoc TAN
%nonassoc LOG

%right EQUAL
%left GREATER LESSER
%left PLUS MINUS
%left MUL DIV MOD

/* Grammar rules and actions follow.  */

%%


PROGRAM: INCLUDE SOURAV COLON TLB BODY TRB
			;   
BODY: /* NULL */
	| BODY STATEMENT
	;
STATEMENT: SEMICOLON		{}	
	| DECLARATION SEMICOLON			 { printf("Declaration\n"); }
	| CONDITION { printf("Condition\n"); }
	| LOOP { printf("Loop\n"); }
	;

DECLARATION: TYPE ID 
	   		;
TYPE: INT 
	| FLOAT
	| DOUBLE
	| STRING
	| CHAR
	;

ID: VAR  { printf("Single variable declare is %s\n", $1) ;  }
	| VAR KOMMA ID { printf("Multiple variable declare is %s\n", $1) ;  }
	| VAR EQUAL DIGIT { printf("Variable declare with value is %s = %d\n", $1, $3) ;  }
	| VAR EQUAL DIGIT PLUS DIGIT { printf("Addition is %s = %d\n", $1, $3 + $5) ;  }
	| VAR EQUAL DIGIT MINUS DIGIT { printf("Minus is %s = %d\n", $1, $3 - $5) ;  }
	| VAR EQUAL DIGIT MUL DIGIT { printf("Multiplication is %s = %d\n", $1, $3 * $5) ;  }
	| VAR EQUAL DIGIT DIV DIGIT { printf("Division is %s = %d\n", $1, $3 / $5) ;  }
	| VAR EQUAL DIGIT POWER DIGIT { printf("Power is %s = %d\n", $1, pow($3, $5)) ;  }
	| VAR EQUAL DIGIT MOD DIGIT { printf("MOD is %s = %d\n", $1, $3 % $5) ;  }
	| VAR EQUAL DIGIT SQUARE { printf("Square is %s = %d\n", $1, $3 * $3) ;  }
	| VAR EQUAL SIN DIGIT {printf("Value of Sin(%d) is %lf\n",$4,sin($4*3.1416/180));}
	| VAR EQUAL COS DIGIT {printf("Value of Cos(%d) is %lf\n",$4,cos($4*3.1416/180));}
	| VAR EQUAL TAN DIGIT {printf("Value of Tan(%d) is %lf\n",$4,tan($4*3.1416/180));}
	| VAR EQUAL LOG DIGIT {printf("Value of Log(%d) is %lf\n",$4,log($4));}
	;

CONDITION: IF FLB DIGIT LESSER DIGIT FRB SLB OUTPUT SRB { printf("IF condition\n"); }
			| IF FLB DIGIT GREATER DIGIT FRB SLB OUTPUT SRB { printf("IF condition\n"); }
			| IF FLB DIGIT EQUAL DIGIT FRB SLB OUTPUT SRB { printf("IF condition\n"); }
			| ELIF FLB DIGIT LESSER DIGIT FRB SLB OUTPUT SRB { printf("ELIF condition\n"); }
			| ELIF FLB DIGIT GREATER DIGIT FRB SLB OUTPUT SRB { printf("ELIF condition\n"); }
			| ELIF FLB DIGIT EQUAL DIGIT FRB SLB OUTPUT SRB { printf("ELIF condition\n"); }
			| ELSE SLB OUTPUT SRB { printf("ELSE condition\n"); }
			;
OUTPUT: PRINTING VAR SEMICOLON { printf("Printing is %s\n", $2); }
		;

LOOP: FOR FLB TYPE VAR LESSER DIGIT FRB SLB OUTPUT SRB { 
	for(int i = 1; i <= $6; i++){
		printf("%d\n", i);
	}
 }
	| FOR FLB TYPE VAR GREATER DIGIT FRB SLB OUTPUT SRB { 
	for(int i = $6; i >= 1; i--){
		printf("%d\n", i);
	 }
}
	| WHILE FLB TYPE VAR COLON DIGIT FRB SLB OUTPUT SRB { 
	int i = 1;
	while(i <= $6){
		printf("%d\n", i);
	 }
	 }
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
	freopen("input.txt","r",stdin);
	freopen("output.txt","w",stdout);
	yyparse();

	// fclose(yyin);
 	// fclose(yyout);
    
	return 0;
}