# Ruby 2.4ではmatch?メソッドが追加、文字列が正規表現にマッチすればtrue,しなければfalse
# ただし、matchした場合でも組み込み変数やRegexp.last_monthを書き換えないので、高速に動作
pp /\d{3}-\d{4}/.match?('123-4577')

pp $~
pp Regexp.last_match

# 文字列と正規表現を入れ替えてもOK
pp '123-4567'.match?(/\d{3}-\d{4}/)
