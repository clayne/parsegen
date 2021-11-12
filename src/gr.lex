%start string
%start symb

dig     [0-9]
odig    [0-7]
hdig    [0-9a-fA-F]
letter  [a-zA-Z]
id      ({letter}|_)({letter}|{dig}|_)*
ws      [ \t]+

%%

escape_oct    <string symb> \\{odig}{1,3}
escape_hex    <string symb> \\x{hdig}{1,2}
escape_a      <string symb> \\a
escape_b      <string symb> \\b
escape_f      <string symb> \\f
escape_r      <string symb> \\r
escape_n      <string symb> \\n
escape_t      <string symb> \\t
escape_v      <string symb> \\v
escape_other  <string symb> \\.

string_seq    <string> [^\n\\"]+
string_close  <string> \"

symb_other    <symb> [^\n\\']
symb_close    <symb> \'

whitespace       {ws}

unterminated_token   <string symb> \n | <<EOF>>

token     <initial> "%token"
action    <initial> "%action"
option    <initial> "%option"
left      <initial> "%left"
right     <initial> "%right"
nonassoc  <initial> "%nonassoc"
prec      <initial> "%prec"
sep       <initial> "%%"
token_id  <initial> \[{id}\]
action_id <initial> \{{id}\}
error_id  <initial> "$error"
id        <initial> {id}
comment   <initial> #

string     \"
symb       \'
other      .
nl         \n
eof        <<EOF>>

%%
