#   File:   "rgp.rb"
#   Created:  22-Jun-2019
#   Author:   sayama99
#   Description:
def to_hex(r, g, b)
  # 1)
  #'#' +
  #  r.to_s(16).rjust(2, '0') +
  #  g.to_s(16).rjust(2, '0') +
  #  b.to_s(16).rjust(2, '0')
  # 2)
  #hex = '#'
  #[r, g, b].each do |n|
    #hex += n.to_s(16).rjust(2, '0')
  #end
  #hex
  # 3)
  # inject:初回#, 2回目以降作成された文字列が追加、最後の文字列が戻り値
  [r, g, b].inject('#') do |hex, n|
    hex + n.to_s(16).rjust(2, '0')
  end
end

def to_ints(hex)
  #代入1
  #r = hex[1..2]
  #g = hex[3..4]
  #b = hex[5..6]
  #代入2
  #r, g, b = hex[1..2], hex[3..4], hex[5..6]
  #代入3
  # scan:正規表現にマッチした文字列を配列にして返す
  # 正規表現:\w	単語構成文字:[a-zA-Z_0-9]
  #r, g, b = hex.scan(/\w\w/)
  #1)
  #ints = []
  #[r, g, b].each do |s|
  #  ints << s.hex
  #end
  # map:空の配列にループ処理した結果を詰め込んでいく
  #2)
  #[r, g, b].map do |s|
  #  s.hex
  #end
  #3)
  #hex.scan(/\w\w/).map do |s|
  #  s.hex
  #end
  #4)
  # ブロックが1個だけ、ブロック内メソッドに引数なし、
  # メソッドを1回呼ぶだけの場合、ブロックの代わりに
  # &:メソッド名を渡すことができる
  hex.scan(/\w\w/).map(&:hex)
end