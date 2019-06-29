#   File:   "name_scan.rb"
#   Created:  28-Jun-2019
#   Author:   sayama99
#   Description:
# ?<name>というメタ文字を使うと、キャプチャの結果に名前を付けられる。
text = '私の誕生日は1977年7月17日です。'
m = /(?<year>\d+)年(?<month>\d+)月(?<day>\d+)日/.match(text)
puts m[:year]
puts m[:month]
puts m[:day]

# 文字列でも参照可能
puts m['year']

# 数値でも可能
puts m[2]

# 左辺に正規表現リテラル、右辺に文字列を置いて =~を使うとローカル変数に代入
# 順番を変えると使えない
# 正規表現オブジェクトを変数に入れてもNG
if /(?<year>\d+)年(?<month>\d+)月(?<day>\d+)日/ =~ text
  puts "#{year}/#{month}/#{day}"
else
  puts "NO match"
end

