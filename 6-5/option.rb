#   File:   "option.rb"
#   Created:  28-Jun-2019
#   Author:   sayama99
#   Description:
# $iオプションをつけると大文字小文字を区別しない
pp "1:#{'HELLO' =~ /hello/i}"
pp "2:#{'HELLO' =~ /hello/}"

# %rを使った場合も最後にオプションをつけられる
pp "3:#{'HELLO' =~ %r{hello}i}"
pp "4:#{'HELLO' =~ %r{hello}}"

# Regexp.newを使う場合は、Regexp::IGNORECASEという定数を渡す
regexp = Regexp.new('hello', Regexp::IGNORECASE)
pp "4:#{'HELLO' =~ regexp}"

# mオプションを使うと、任意の文字を表すドット(.)が改行文字にもマッチする
pp "5:"
pp "Hello\nBye" =~ /Hello.Bye/
pp "6:"
pp "Hello\nBye" =~ /Hello.Bye/m

# Regexp.newを使う場合は、Regexp::MULTILINEという定数を渡す
regexp = Regexp.new('hello.Bye', Regexp::MULTILINE)
pp "7:"
pp "hello\nBye" =~ regexp

# xオプションを使うと、空白文字(半角空白や改行文字）が無視され、コメントもかける
regexp = /
 \d{3} # 郵便番号の先頭3桁
 -     # 区切り文字のハイフン
 \d{4} # 郵便番号の末尾4桁
/x
pp "8:"
pp '123-4567' =~ regexp

# xオプションをつけているときに、空白文字(半角空白や改行文字）を無視しない場合はバックスラッシュでエスケープ
regexp = /
 \d{3} # 郵便番号の先頭3桁
 \      # 半角スペースで区切る
 \d{4} # 郵便番号の末尾4桁
/x
pp "9:"
pp '123 4567' =~ regexp

# Regexp.newの場合は、Regexp::EXTENDEDを使う
# バックスラッシュを特別扱いしないように'TEXT'を使う
pattern = <<'TEXT'
 \d{3} # 郵便番号の先頭3桁
 -     # 区切り文字のハイフン
 \d{4} # 郵便番号の末尾4桁
TEXT
regexp = Regexp.new(pattern, Regexp::EXTENDED)
pp "10:"
pp '123-4567' =~ regexp

# iオプションとmオプションを同時に使う
pp "11:"
pp "HELLO\nBYE" =~ /Hello.Bye/im

# Regexp.newでは|で論理和
regexp = Regexp.new('Hello.Bye', Regexp::IGNORECASE | Regexp::MULTILINE)
pp "12:"
pp "HELLO\nBYE" =~ regexp