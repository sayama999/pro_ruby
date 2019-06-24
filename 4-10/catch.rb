#   File:   "catch.rb"
#   Created:  24-Jun-2019
#   Author:   sayama99
#   Description:
# Ruby��throw, catch�͗�O�����Ƃ͊֌W�Ȃ�
# Ruby��raise��rescue���O�����Ŏg��
fruits = ['apple', 'melon', 'orange']
numbers = [1, 2, 3]
catch :done do
  fruits.shuffle.each do |fruit|
    numbers.shuffle.each do |n|
      puts "#{fruit}, #{n}"
      if fruit == 'orange' && n == 3
        # ���ׂĂ̌J��Ԃ�������E�o����
        throw :done
      end
    end
  end
end