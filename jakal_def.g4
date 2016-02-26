// https://www.haskell.org/onlinereport/haskell2010/haskellch2.html#x7-150002.1

prog : stat* EOF ;

stat : assign NL
     | 
     ;

assign : ID EQ expr ;

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
func : OpenParen (ID ID (Comma ID ID)*)? CloseParen RightArrow
       OpenParen (ID (Comma ID)*)? CloseParen Colon body ;

TRUE : "true" ;
False : "false" ;

ID : any utf-8 letter followed by zero or more alphanumerics
OpenParen : "(" ;
CloseParen : ")" ;
Comma : "," :
Colon : ":" ;
RightArrow : "->" ;
OpenBracket : "[" ;
CloseBracket : "]" ;
OpenBrace : "{" ;
CloseBrace : "}" ;
