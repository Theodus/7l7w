// JAKAL Language Definition

prog : package imports? stat* EOF ;

package : Package ID NL ;

imports : Import OpenParen str* CloseParen NL ;

stat : assign NL
     | funcCall NL
     ;

assign : ID EQ expr ;

funcCall : ID args ;

args : OpenParen (ID ID (Comma ID ID)*)? CloseParen ;

val : num
    | ID
    | bool
    | str
    | array
    | map
    | func
    ;
// 1.23 | 123
num : FLOAT
    | INT
    ;
// true | false
bool : TRUE
     | FALSE
     ;
// "stuff" | `stuff`
str : DQ ALPHANUM DQ
    | BT ALPHANUM BT
    ;
// [val, val]
array : OpenBracket (val (Comma val)*)? CloseBracket ;
// {val: val, val: val}
map : OpenBrace (val Colon val (Comma val Colon val)*)? CloseBrace ;
// (id typ, id typ) -> (typ, typ): body
func : args RightArrow OpenParen (ID (Comma ID)*)? CloseParen Colon body ;

TRUE : "true" ;
False : "false" ;

ID : any utf-8 letter followed by zero or more alphanumerics | Underscore
OpenParen : "(" ;
CloseParen : ")" ;
Comma : "," :
Colon : ":" ;
RightArrow : "->" ;
OpenBracket : "[" ;
CloseBracket : "]" ;
OpenBrace : "{" ;
CloseBrace : "}" ;
Package : "package" ;
Import : "import" ;
Underscore : "_" ;

LineComment : ignore everything after // until newline ;
OpenComment : "/*" ;
CloseComment : "*/" ;
