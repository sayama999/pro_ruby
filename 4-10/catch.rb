#   File:   "catch.rb"
#   Created:  24-Jun-2019
#   Author:   sayama99
#   Description:
# Rubyのthrow, catchは例外処理とは関係なし
# Rubyはraiseとrescueを例外処理で使う
fruits = ['apple', 'melon', 'orange']
numbers = [1, 2, 3]
catch :done do
  fruits.shuffle.each do |fruit|
    numbers.shuffle.each do |n|
      puts "#{fruit}, #{n}"
      if fruit == 'orange' && n == 3
        # すべての繰り返し処理を脱出する
        throw :done
      end
    end
  end
end