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

singleLineComment		[ ]*[#][a-zA-Z0-9@$%^&*(){}_+-,.:\|?>< ]*
multipleLineComment		[ ]*[#][#][a-zA-Z0-9@$*(){}_+-,.:\|?><\n\t ]*[#][#]	
%%

{singleLineComment}		{return SCOM;}
{multipleLineComment}		{return MCOM;}
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
    "div" {return DIV;}
    "pinc" {return PINC;}
    "minc" {return MINC;}
    "mod" {return MOD;}
    "printing" {return PRINTING;}
    "scanning" {return SCANNING;}
    "power" {return POWER;}
    "greater" {return GREATER;}
    "lesser" {return LESSER;}
    "komma" {return KOMMA ;}
    "dq" {return DQ;}
    "sq" {return SQ;}
    "square"   {return SQUARE;}
    "sin"    {return SIN;}
    "cos"    {{return COS;}}
    "tan"   {return TAN;}
    "log"    {return LOG;}
    "mul" {return MUL;}
    "functure" {return FUNCTURE;}

    [0-9]+ { 
        yylval.number = atoi(yytext);	
        return DIGIT;
    }

   [a-zA-Z0-9]* {
        yylval.string = strdup(yytext);	
        return VAR;
    }
    [0-9]+\.?[0-9]* {
        yylval.value = atof(yytext);	
        return FLOATING;
    }
    [ ]*	{}
    '\n'	{}
    '\t'	{}
    .	    {printf("%s --> invalid\n",yytext);}


%%
