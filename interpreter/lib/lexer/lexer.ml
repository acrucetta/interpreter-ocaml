
module lexer = struct

  type Lexer = {
    input : string;
    mutable pos : int;
    read_pos : int;
    ch : bytes;
  }

  let new_ input = {
    input = input;
    pos = 0;
    read_pos = 0;
    ch = '\000';
  }

  let read_char l =
    if l.read_pos >= String.length l.input then
      l.ch <- '\000'
    else
      l.ch <- String.get l.input l.read_pos;
    l.pos <- l.read_pos;
    l.read_pos <- l.read_pos + 1
end
