(* token.ml *)

(* Building a token struct class with Type and Literal fields *)

module Token = 
  struct

  type token_type = string

  type token = {
    token_type : token_type;
    literal : string;
  }
  
  (* Building a list of types with each of the operators,
  includes ILLEGAL, EOF, LPAREN, etc.. *)
  let illegal = "ILLEGAL"
  let eof = "EOF"

(* Identifiers + literals *)
  let ident = "IDENT" (* add, foobar, x, y, ... *)
  let int = "INT" (* 1343456 *)

  (* Operators *)
  let assign = "="
  let plus = "+"

  (* Delimiters *)
  let comma = ","
  let semicolon = ";"
  let lparen = "("
  let rparen = ")"
  let lbrace = "{"
  let rbrace = "}"

  (* Keywords *)
  let function_kw = "FUNCTION"
  let let_kw = "LET"

end




