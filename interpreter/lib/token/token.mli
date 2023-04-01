(* token.mlmodumodule Token : sig
  type token_type = string

  type token = {
    token_type : token_type;
    literal : token_type;
  }

  val illegal : string
  val eof : string
  val ident : string
  val int : string
  val assign : string
  val plus : string
  val comma : string
  val semicolon : string
  val lparen : string
  val rparen : string
  val lbrace : string
  val rbrace : string
  val function_kw : string
  val let_kw : string
end
le 

Token : sig
  type token_type = string

  type token = {
    token_type : token_type;
    literal : token_type;
  }

  val illegal : string
  val eof : string
  val ident : string
  val int : string
  val assign : string
  val plus : string
  val comma : string
  val semicolon : string
  val lparen : string
  val rparen : string
  val lbrace : string
  val rbrace : string
  val function_kw : string
  val let_kw : string
end
i *)

module type TOKEN = sig
  type token_type = string

  type token = {
    token_type: token_type;
    literal: string;
  }

  val illegal : token_type
  val eof : token_type

  (* Identifiers + literals *)
  val ident : token_type
  val int : token_type

  (* Operators *)
  val assign : string
  val plus : string

  (* Delimiters *)
  val comma : string
  val semicolon : string
  val lparen : string
  val rparen : string
  val lbrace : string
  val rbrace : string

  (* Keywords *)
  val function_kw : string
  val let_kw : string
end

module Token : TOKEN
