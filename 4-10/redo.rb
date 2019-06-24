#   File:   "redo.rb"
#   Created:  24-Jun-2019
#   Author:   sayama99
#   Description:
# 繰り返し処理をやり直したい場合はredoを使う
# やり直し=初回からやり直すのではなく、その回の繰り返し処理の最初に戻る
foods = ['トマト', 'ピーマン', 'セロリ']
#count = 0
foods.each do |food|
  print "#{food}は好きですか? ==> "
  # sampleは配列からランダムに1要素を取り出すメソッド
  answer = ['はい', 'いいえ'].sample
  #answer = ['いいえ'].sample
  puts answer
  #count += 1

  #はいと答えなければもう一度聞き直す
  redo unless answer == 'はい'
  #redo unless answer != 'はい' && count < 2
  count = 0
end