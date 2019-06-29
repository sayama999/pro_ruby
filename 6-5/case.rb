#   File:   "case.rb"
#   Created:  28-Jun-2019
#   Author:   sayama99
#   Description:
text = '03-1234-5678'

case text
when /^\d{3}-\d{4}$/
  puts '電話番号'
when /^\d{4}\/\d{1,2}\/\d{1,2}$/
  puts '日付'
when /^\d+-\d+-\d+$/
  puts '電話番号'
end