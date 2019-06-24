#   File:   "catch.rb"
#   Created:  24-Jun-2019
#   Author:   sayama99
#   Description:
# Ruby‚Ìthrow, catch‚Í—áŠOˆ—‚Æ‚ÍŠÖŒW‚È‚µ
# Ruby‚Íraise‚Ærescue‚ğ—áŠOˆ—‚Åg‚¤
fruits = ['apple', 'melon', 'orange']
numbers = [1, 2, 3]
catch :done do
  fruits.shuffle.each do |fruit|
    numbers.shuffle.each do |n|
      puts "#{fruit}, #{n}"
      if fruit == 'orange' && n == 3
        # ‚·‚×‚Ä‚ÌŒJ‚è•Ô‚µˆ—‚ğ’Eo‚·‚é
        throw :done
      end
    end
  end
end