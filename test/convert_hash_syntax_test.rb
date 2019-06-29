#   File:   "convert_hash_syntax.rb"
#   Created:  28-Jun-2019
#   Author:   sayama99
#   Description:
require 'minitest/autorun'
require './lib/convert_hash_syntax'

class ConvertHashSyntaxTest < Minitest::Test
  def test_convert_hash_syntax
    old_syntax = <<~TEXT
      {
        :name =>'Alice',
        :age =>20,
        :gender   =>   :female
      }
    TEXT
    expected = <<~TEXT
      {
        name: 'Alice',
        age: 20,
        gender: :female
      }
    TEXT
    assert_equal expected, convert_hash_syntax(old_syntax)
  end
end