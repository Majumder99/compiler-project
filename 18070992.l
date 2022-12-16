%{
    #include "1807099.tab.h"
    #include<stdio.h>
    #include<stdlib.h>
    #include <string.h>
    extern YYSTYPE yylval;
    int yyparse();
    int yylex();
    int yyerror();
%}

SPACE [ ]
NEWLINE [\n]
singleLineComment		[ ]*[#][#][a-zA-Z0-9@$%^&*(){}_+-,.:\|?>< ]
%%

{singleLineComment}		{return SCOM;}
    "include" {return INCLUDE;}
    "sourav" {return SOURAV; }
    "flb"	 { return FLB ; }
    "frb"	  { return FRB ; }
    "slb"	 { return SLB ; }
    "srb"	  { return SRB ; }
    "tlb"	 { return TLB ; }
    "trb"	  { return TRB ; }
    "int"	{ return INT ; }
    "float"	{ return FLOAT ; }
    "double"	{ return DOUBLE ; }
    "string"	{ return STRING ; }
    "char"	{ return CHAR ; }
    "if" {return IF ;}
    "elif" {return ELIF ;}
    "else" {return ELSE ;}
    "FL" {return FOR ;}
    "WL" {return WHILE ;}
    "return" {return RETURN ;}
    "void" {return VOID;}
    "sc" {return SEMICOLON;}
    "col" {return COLON;}
    "switching" {return SWITCHING ;}
    "structure" {return STRUCT;}
    "casing" {return CASE;}
    "stop" {return STOP;}
    "running" {return RUNNING;}
    "equal" {return EQUAL;}
    "dequal" {return DEQUAL;}
    "plus" {return PLUS;}
    "minus" {return MINUS;}
    "div" {return DIVISION;}
    "pinc" {return PINC;}
    "minc" {return MINC;}
    "percentage" {return PERCENTAGE;}
    "printing" {return PRINTING;}
    "scanning" {return SCANNING;}
    "power" {return POWER;}
    "greater" {return GREATER;}
    "lesser" {return LESSER;}
    "komma" {return KOMMA ;}
    "dq" {return DQ;}
    "sq" {return SQ;}
    "square"   {return SQUARE;}
    "sine"    {return SIN;}
    "cose"    {{return COS;}}
    "tan"   {return TAN;}
    "log"    {return LOG;}

    [0-9]+ { 
        yylval.number = atoi(yytext);	
        return DIGIT;
    }

    [a-zA-Z][a-zA-Z0-9]* {
        yylval.string = strdup(yytext);	
        return VAR;
    }
    [ ]*	{}
    '\n'	{}
    '\t'	{}
    .	    {printf("%s --> invalid\n",yytext);}


%%
