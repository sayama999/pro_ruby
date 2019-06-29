#   File:   "match.rb"
#   Created:  29-Jun-2019
#   Author:   sayama99
#   Description:

text = '私の誕生日は1977年7月17日です。'

# =~やmatchメソッドを使うとマッチした結果が組み込み変数に代入される
text =~ /(\d+)年(\d+)月(\d+)日/

# MatchDataオブジェクトを取得
puts "MatchData:"
p $~

# マッチした部分全体を取得
print $&

#1個目から3個目のキャプチャを取得
p "\n1-3"
p $1
p $2
p $3

#最後のキャプチャを取得
p "last"
p $+
