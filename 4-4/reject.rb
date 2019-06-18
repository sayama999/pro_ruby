numbers = [1, 2, 3, 4, 5, 6]
# ブロックの戻り値が偽になった要素だけが集められる(3の倍数を除外)
new_numbers = numbers.reject { |n| n % 3 == 0 }
p new_numbers