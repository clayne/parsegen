// Lexegen autogenerated definition file - do not edit!

enum {
    std_pat_default = 0,
    pat_escape_oct,
    pat_escape_hex,
    pat_escape_a,
    pat_escape_b,
    pat_escape_f,
    pat_escape_r,
    pat_escape_n,
    pat_escape_t,
    pat_escape_v,
    pat_escape_other,
    pat_string_seq,
    pat_string_close,
    pat_symb_other,
    pat_symb_close,
    pat_whitespace,
    pat_unterminated_token,
    pat_token,
    pat_action,
    pat_option,
    pat_left,
    pat_right,
    pat_nonassoc,
    pat_prec,
    pat_sep,
    pat_token_id,
    pat_action_id,
    pat_error_id,
    pat_id,
    pat_comment,
    pat_string,
    pat_symb,
    pat_other,
    pat_nl,
    pat_eof,
};

enum {
    sc_initial = 0,
    sc_string,
    sc_symb,
};

struct StateData {
    size_t pat_length = 0;
    char* unread_text = nullptr;
    std::vector<char> text;
    std::vector<int> state_stack;
};