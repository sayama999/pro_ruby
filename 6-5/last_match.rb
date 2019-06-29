#   File:   "match.rb"
#   Created:  29-Jun-2019
#   Author:   sayama99
#   Description:

text = '私の誕生日は1977年7月17日です。'

# =~演算子を使うと、マッチした結果をRegexp.last_matchで取得できる
text =~ /(\d+)年(\d+)月(\d+)日/

# MatchDataオブジェクトを取得
puts "MatchData:"
p Regexp.last_match

# マッチした部分全体を取得
p Regexp.last_match(0)

#1個目から3個目のキャプチャを取得
p "\n1-3"
p Regexp.last_match(1)
p Regexp.last_match(2)
p Regexp.last_match(3)

#最後のキャプチャを取得
p "last"
p Regexp.last_match(-1)
