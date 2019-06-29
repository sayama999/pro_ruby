#   File:   "regexp.rb"
#   Created:  28-Jun-2019
#   Author:   sayama99
#   Description:
pp Regexp.new('\d{3}-\d{4}')

#スラッシュで囲むと、スラッシュをエスケープする必要がある
pp /http:\/\/example\.com/

#rを使うとスラッシュをエスケープしなくて良い
pp %r!http://example\.com!

#{}で囲んでも良い
pp %r{http://example\.com}
 