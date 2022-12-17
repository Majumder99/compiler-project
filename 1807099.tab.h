
/* A Bison parser, made by GNU Bison 2.4.1.  */

/* Skeleton interface for Bison's Yacc-like parsers in C
   
      Copyright (C) 1984, 1989, 1990, 2000, 2001, 2002, 2003, 2004, 2005, 2006
   Free Software Foundation, Inc.
   
   This program is free software: you can redistribute it and/or modify
   it under the terms of the GNU General Public License as published by
   the Free Software Foundation, either version 3 of the License, or
   (at your option) any later version.
   
   This program is distributed in the hope that it will be useful,
   but WITHOUT ANY WARRANTY; without even the implied warranty of
   MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
   GNU General Public License for more details.
   
   You should have received a copy of the GNU General Public License
   along with this program.  If not, see <http://www.gnu.org/licenses/>.  */

/* As a special exception, you may create a larger work that contains
   part or all of the Bison parser skeleton and distribute that work
   under terms of your choice, so long as that work isn't itself a
   parser generator using the skeleton or a modified version thereof
   as a parser skeleton.  Alternatively, if you modify or redistribute
   the parser skeleton itself, you may (at your option) remove this
   special exception, which will cause the skeleton and the resulting
   Bison output files to be licensed under the GNU General Public
   License without this special exception.
   
   This special exception was added by the Free Software Foundation in
   version 2.2 of Bison.  */


/* Tokens.  */
#ifndef YYTOKENTYPE
# define YYTOKENTYPE
   /* Put the tokens into the symbol table, so that GDB and other debuggers
      know about them.  */
   enum yytokentype {
     VAR = 258,
     DIGIT = 259,
     FLOATING = 260,
     SCOM = 261,
     MCOM = 262,
     INCLUDE = 263,
     SOURAV = 264,
     FLB = 265,
     FRB = 266,
     SLB = 267,
     SRB = 268,
     TLB = 269,
     TRB = 270,
     INT = 271,
     FLOAT = 272,
     IF = 273,
     ELIF = 274,
     ELSE = 275,
     FOR = 276,
     WHILE = 277,
     RETURN = 278,
     VOID = 279,
     SEMICOLON = 280,
     COLON = 281,
     SWITCHING = 282,
     STRUCT = 283,
     CASE = 284,
     STOP = 285,
     RUNNING = 286,
     EQUAL = 287,
     DEQUAL = 288,
     PLUS = 289,
     MINUS = 290,
     DIV = 291,
     PINC = 292,
     MINC = 293,
     MOD = 294,
     PRINTING = 295,
     SCANNING = 296,
     POWER = 297,
     GREATER = 298,
     LESSER = 299,
     KOMMA = 300,
     DQ = 301,
     SQ = 302,
     SQUARE = 303,
     SIN = 304,
     COS = 305,
     TAN = 306,
     LOG = 307,
     MUL = 308,
     FUNCTURE = 309
   };
#endif



#if ! defined YYSTYPE && ! defined YYSTYPE_IS_DECLARED
typedef union YYSTYPE
{

/* Line 1676 of yacc.c  */
#line 15 "1807099.y"

	 int number;
     char *string;
	 double value;



/* Line 1676 of yacc.c  */
#line 114 "1807099.tab.h"
} YYSTYPE;
# define YYSTYPE_IS_TRIVIAL 1
# define yystype YYSTYPE /* obsolescent; will be withdrawn */
# define YYSTYPE_IS_DECLARED 1
#endif

extern YYSTYPE yylval;


