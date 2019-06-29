#   File:   "scan.rb"
#   Created:  26-Jun-2019
#   Author:   sayama99
#   Description:
text = <<TEXT
I love Ruby.
Python is a great language.
Java and JavaScript are different
TEXT

pp text.scan(/[A-Z][A-Za-z]+/)

text = <<TEXT
私の郵便番号は1234567です。
僕の住所は6773056 兵庫県西脇市伊多波町1234です。
TEXT

# Windowsではppコマンドだと文字化けするのに注意
puts text.gsub(/(\d{3})(\d{4})/, '\1-\2')

# =~でmatch判定
if '123-4567' =~ /\d{3}-\d{4}/
  puts 'match'
else
  puts 'no match'
end

# !~でunmatch判定
if '123-4567' !~ /\d{3}-\d{4}/
  puts 'no match'
else
  puts 'match'
end

text = '私の誕生日は1977年7月17日です。'
m = /(\d+)年(\d+)月(\d+)日/.match(text)
puts m[1]
puts m[2]
puts m[3]