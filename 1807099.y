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
	 double value;
}
%token <string> VAR
%type <number> STATEMENT
%token <number> DIGIT
%token <value> FLOATING
%token SCOM MCOM INCLUDE SOURAV FLB FRB SLB SRB TLB TRB INT FLOAT IF ELIF ELSE FOR WHILE RETURN VOID SEMICOLON COLON SWITCHING STRUCT CASE STOP RUNNING EQUAL DEQUAL PLUS MINUS DIV PINC MINC MOD PRINTING SCANNING POWER GREATER LESSER KOMMA DQ SQ SQUARE SIN COS TAN LOG MUL FUNCTURE
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


PROGRAM: INCLUDE SOURAV FLB FRB SLB BODY SRB { printf("Header file\n"); }
			;   
BODY: /* NULL */
	| BODY STATEMENT
	;
STATEMENT: SEMICOLON		{}	
	| DECLARATION SEMICOLON			 { printf("Declaration\n"); }
	| CONDITION  {}
	| LOOP  {}
	| FUNCTION {} 
	| PRINTF  {}
	| SCOM { printf("Single line comment\n"); }
	| MCOM { printf("Multi line comment\n"); }
	| STOP { printf("Break\n"); }
	| RUNNING { printf("Continue\n"); }
	;

DECLARATION: TYPE ID 
	   		;
TYPE: INT 
	| FLOAT
	;

ID: VAR  { printf("Single variable declare is %s\n", $1) ;  }
	| VAR KOMMA ID { printf("Multiple variable declare is %s\n", $1) ;  }
	| VAR EQUAL FLOATING { printf("Variable declare with value is %s = %.2f\n", $1, $3) ;  }
	| VAR EQUAL FLOATING PLUS FLOATING { printf("Addition is %s = %.2f\n", $1, $3 + $5) ;  }
	| VAR EQUAL FLOATING MINUS FLOATING { printf("Minus is %s = %.2f\n", $1, $3 - $5) ;  }
	| VAR EQUAL FLOATING MUL FLOATING { printf("Multiplication is %s = %.2f\n", $1, $3 * $5) ;  }
	| VAR EQUAL FLOATING DIV FLOATING { printf("Division is %s = %.2f\n", $1, $3 / $5) ;  }
	| VAR EQUAL DIGIT { printf("Variable declare with value is %s = %d\n", $1, $3) ;  }
	| VAR EQUAL DIGIT PLUS DIGIT { printf("Addition is %s = %d\n", $1, $3 + $5) ;  }
	| VAR EQUAL DIGIT MINUS DIGIT { printf("Minus is %s = %d\n", $1, $3 - $5) ;  }
	| VAR EQUAL DIGIT MUL DIGIT { printf("Multiplication is %s = %d\n", $1, $3 * $5) ;  }
	| VAR EQUAL DIGIT DIV DIGIT { printf("Division is %s = %d\n", $1, $3 / $5) ;  }
	| VAR EQUAL DIGIT POWER DIGIT { printf("Power is %s = %.f\n", $1, pow((int)$3, (int)$5)) ;  }
	| VAR EQUAL DIGIT MOD DIGIT { printf("MOD is %s = %d\n", $1, $3 % $5) ;  }
	| VAR EQUAL DIGIT SQUARE { printf("Square is %s = %d\n", $1, $3 * $3) ;  }
	| VAR EQUAL SIN DIGIT {printf("Sin(%d) = %lf\n",$4,sin($4*3.1416/180));}
	| VAR EQUAL COS DIGIT {printf("Cos(%d) = %lf\n",$4,cos($4*3.1416/180));}
	| VAR EQUAL TAN DIGIT {printf("Tan(%d) = %lf\n",$4,tan($4*3.1416/180));}
	| VAR EQUAL LOG DIGIT {printf("Log(%d) = %lf\n",$4,log($4));}
	| VAR EQUAL DIGIT GREATER DIGIT { printf("Greater is %s = %d\n", $1, $3 > $5) ;  }
	| VAR EQUAL DIGIT LESSER DIGIT { printf("Lesser is %s = %d\n", $1, $3 < $5) ;  }
	| VAR EQUAL DIGIT EQUAL DIGIT { printf("Equal is %s = %d\n", $1, $3 == $5) ;  }
	| VAR EQUAL DIGIT PINC { printf("Post increment is %s = %d\n", $1, $3++) ;  }
	| VAR EQUAL DIGIT MINC { printf("Post decrement is %s = %d\n", $1, $3--) ;  }
	| VAR EQUAL PINC DIGIT { printf("Pre increment is %s = %d\n", $1, ++$4) ;  }
	| VAR EQUAL MINC DIGIT { printf("Pre decrement is %s = %d\n", $1, --$4) ;  }
	;

CONDITION: IF FLB DIGIT LESSER DIGIT FRB SLB BODY SRB { printf("IF condition\n"); }
			| IF FLB DIGIT GREATER DIGIT FRB SLB BODY SRB { printf("IF condition\n"); }
			| IF FLB DIGIT EQUAL DIGIT FRB SLB BODY SRB { printf("IF condition\n"); }
			| ELIF FLB DIGIT LESSER DIGIT FRB SLB BODY SRB { printf("ELIF condition\n"); }
			| ELIF FLB DIGIT GREATER DIGIT FRB SLB BODY SRB { printf("ELIF condition\n"); }
			| ELIF FLB DIGIT EQUAL DIGIT FRB SLB BODY SRB { printf("ELIF condition\n"); }
			| ELSE SLB BODY SRB { printf("ELSE condition\n"); }
			;

PRINTF: PRINTING VAR SEMICOLON { printf("Printing for %s\n", $2)}
	;

LOOP: FOR FLB TYPE VAR LESSER DIGIT FRB SLB BODY SRB { 
	
	for(int i = 1; i <= $6; i++){
		printf("%d\n", i);
	}
	printf("For loop\n")
 }
	| FOR FLB TYPE VAR GREATER DIGIT FRB SLB BODY SRB { 
	for(int i = $6; i >= 1; i--){
		printf("%d\n", i);
	 }
	printf("For loop\n")
}
	| WHILE FLB TYPE VAR COLON DIGIT FRB SLB BODY SRB { 
	int i = 1;
	while(i <= $6){
		printf("%d\n", i);
		i++;
	 }
	printf("While loop\n")
	 }
	;

FUNCTION: FUNCTURE FLB MULTIDEC FRB SLB BODY SRB { printf("Function found\n"); }
		;

MULTIDEC: TYPE VAR KOMMA MULTIDEC { printf("Params %s\n", $2); }
		| TYPE VAR { 
			printf("Function called\n");	
			 printf("Params %s\n", $2);
		 }
		|
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