#   File:   "convert_length_test.rb"
#   Created:  25-Jun-2019
#   Author:   sayama99
#   Description:
require 'minitest/autorun'
require './lib/convert_length'

class ConvertLengthTest < Minitest::Test
  def test_convert_length
    #assert_equal 39.37, convert_length(1, 'm', 'in')
    #assert_equal 0.38, convert_length(15, 'in', 'm')
    #assert_equal 10670.73, convert_length(35000, 'ft', 'm')
    # キーを文字列からシンボルに変更
    #assert_equal 39.37, convert_length(1, :m, :in)
    #assert_equal 0.38, convert_length(15, :in, :m)
    #assert_equal 10670.73, convert_length(35000, :ft, :m)
    # キーワード引数に変更
    assert_equal 39.37, convert_length(1, from: :m, to: :in)
    assert_equal 0.38, convert_length(15, from: :in, to: :m)
    assert_equal 10670.73, convert_length(35000, from: :ft, to: :m)
  end
end