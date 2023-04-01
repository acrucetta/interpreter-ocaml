(* test_lexer.ml *)

open OUnit2
open Token
open Lexer

let test_next_token _ =
  let input = "=+(){},;" in

  let tests = [
    (ASSIGN, "=");
    (PLUS, "+");
    (LPAREN, "(");
    (RPAREN, ")");
    (LBRACE, "{");
    (RBRACE, "}");
    (COMMA, ",");
    (SEMICOLON, ";");
    (EOF, "");
  ] in

  let l = new_lexer input in

  let assert_token i (expected_type, expected_literal) =
    let tok = l.next_token () in
    assert_equal ~printer:TokenType.to_string expected_type tok.token_type;
    assert_equal expected_literal tok.literal in

  List.iteri assert_token tests

let suite =
  "suite" >::: ["test_next_token" >:: test_next_token]

let () =
  run_test_tt_main suite
