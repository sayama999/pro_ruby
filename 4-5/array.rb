p "#{(1..5).to_a}"
p "#{(1...5).to_a}"
p "#{('a'..'e').to_a}"
p "#{('a'...'e').to_a}"
p "#{('bad'..'bag').to_a}"
p "#{('bad'...'bag').to_a}"
p "#{[*1..5]}"
p "#{[*1...5]}"

# 範囲オブジェクトを配列に変換
numbers=(1..4).to_a
sum = 0
# 配列として繰り返し処理
numbers.each { |n| sum += n }
p "sum=#{sum}"

# 範囲オブジェクトのまま繰り返しも可能
sum = 0
(1..4).each { |n| sum += n }
p "sum2=#{sum}"

# 範囲オブジェクトにstepメソッドで値を増やす間隔を指定
numbers = []
(1..10).step(2) { |n| numbers << n }
p "numbers=#{numbers}"
