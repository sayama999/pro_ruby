numbers = [1, 2, 3, 4]
# 第1引数(この場合はresult)は初回のみ0が入り、
# 2回目以降は前回ブロックの戻り値が入る
# 第2引数は配列の各要素が順番に入る
# 1回目 result=0, n=1 => result=0+1=1
# 2回目 result=1, n=2 => result=1+2=3
# 3回目 result=3, n=3 => result=3+3=6
# 4回目 result=6, n=4 => result=6+4=10
# 最後の要素に達したのでinjectメソッドの戻り値が10になる
sum = numbers.inject(0) { |result, n| result + n }
p sum

p ['Mon', 'Tue', 'Wed', 'Thu', 'Fri', 'Sat'].inject('Sun') {  |result, s| 
  result + s
}