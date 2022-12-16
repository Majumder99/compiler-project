
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
     SCOM = 260,
     INCLUDE = 261,
     SOURAV = 262,
     FLB = 263,
     FRB = 264,
     SLB = 265,
     SRB = 266,
     TLB = 267,
     TRB = 268,
     INT = 269,
     FLOAT = 270,
     DOUBLE = 271,
     STRING = 272,
     CHAR = 273,
     IF = 274,
     ELIF = 275,
     ELSE = 276,
     FOR = 277,
     WHILE = 278,
     RETURN = 279,
     VOID = 280,
     SEMICOLON = 281,
     COLON = 282,
     SWITCHING = 283,
     STRUCT = 284,
     CASE = 285,
     STOP = 286,
     RUNNING = 287,
     EQUAL = 288,
     DEQUAL = 289,
     PLUS = 290,
     MINUS = 291,
     DIV = 292,
     PINC = 293,
     MINC = 294,
     MOD = 295,
     PRINTING = 296,
     SCANNING = 297,
     POWER = 298,
     GREATER = 299,
     LESSER = 300,
     KOMMA = 301,
     DQ = 302,
     SQ = 303,
     SQUARE = 304,
     SIN = 305,
     COS = 306,
     TAN = 307,
     LOG = 308,
     MUL = 309
   };
#endif



#if ! defined YYSTYPE && ! defined YYSTYPE_IS_DECLARED
typedef union YYSTYPE
{

/* Line 1676 of yacc.c  */
#line 15 "1807099.y"

	 int number;
     char *string;



/* Line 1676 of yacc.c  */
#line 113 "1807099.tab.h"
} YYSTYPE;
# define YYSTYPE_IS_TRIVIAL 1
# define yystype YYSTYPE /* obsolescent; will be withdrawn */
# define YYSTYPE_IS_DECLARED 1
#endif

extern YYSTYPE yylval;


