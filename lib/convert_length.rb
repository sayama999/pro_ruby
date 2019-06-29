#   File:   "convert_length.rb"
#   Created:  25-Jun-2019
#   Author:   sayama99
#   Description:
#def convert_length(length, unit_from, unit_to)
#キーワード引数に変更(デフォルトはm)
def convert_length(length, from: :m, to: :m)
  # units = { 'm' => 1.0, 'ft' => 3.28, 'in' => 39.37 }
  # キーを文字列からシンボルに変更
  units = { m: 1.0, ft: 3.28, in: 39.37 }
  #(length / units[unit_from] * units[unit_to]).round(2)
  (length / units[from] * units[to]).round(2)
end