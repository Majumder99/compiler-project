
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
     SCOM = 258,
     INCLUDE = 259,
     SOURAV = 260,
     FLB = 261,
     FRB = 262,
     SLB = 263,
     SRB = 264,
     TLB = 265,
     TRB = 266,
     INT = 267,
     FLOAT = 268,
     DOUBLE = 269,
     STRING = 270,
     CHAR = 271,
     IF = 272,
     ELIF = 273,
     ELSE = 274,
     FOR = 275,
     WHILE = 276,
     RETURN = 277,
     VOID = 278,
     SEMICOLON = 279,
     COLON = 280,
     SWITCHING = 281,
     STRUCT = 282,
     CASE = 283,
     STOP = 284,
     RUNNING = 285,
     EQUAL = 286,
     DEQUAL = 287,
     PLUS = 288,
     MINUS = 289,
     DIVISION = 290,
     PINC = 291,
     MINC = 292,
     PERCENTAGE = 293,
     PRINTING = 294,
     SCANNING = 295,
     POWER = 296,
     GREATER = 297,
     LESSER = 298,
     KOMMA = 299,
     DQ = 300,
     SQ = 301,
     SQUARE = 302,
     SIN = 303,
     COS = 304,
     TAN = 305,
     LOG = 306,
     DIGIT = 307,
     VAR = 308
   };
#endif



#if ! defined YYSTYPE && ! defined YYSTYPE_IS_DECLARED
typedef union YYSTYPE
{

/* Line 1676 of yacc.c  */
#line 14 "1807099.y"

	 int number;
     char *string;



/* Line 1676 of yacc.c  */
#line 112 "1807099.tab.h"
} YYSTYPE;
# define YYSTYPE_IS_TRIVIAL 1
# define yystype YYSTYPE /* obsolescent; will be withdrawn */
# define YYSTYPE_IS_DECLARED 1
#endif

extern YYSTYPE yylval;


