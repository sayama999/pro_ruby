numbers = [1, 2, 3, 4, 5]
# ブロックの戻り値が新しい配列の各要素になる
new_numbers = numbers.map { |n| n * 10 }
p new_numbers

p ['ruby', 'java', 'perl'].map { |s| s.upcase }
# 1)ブロック引数が1個だけ
# 2)ブロックの中で呼び出すメソッドには引数なし
# 3)ブロックの中では、ブロック引数に対してメソッドを1回呼ぶ以外の処理がない
# 上記を満たす場合、map(&:メソッド名)と書き換えられる。
p ['ruby', 'java', 'perl'].map(&:upcase)