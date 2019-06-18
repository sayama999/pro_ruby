numbers = [1, 2, 3, 4, 5, 6]
# ブロックの戻り値が最初に真になった要素を返す
new_number = numbers.find { |n| n.even? }
p new_number
new_number2 = numbers.detect { |n| n.even? }
p new_number2