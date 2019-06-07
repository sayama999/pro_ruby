def something
	 <<-TEXT
	 これはヒアドキュメントです。
	     <<-を使うと最後の識別子をインデントさせることができます。
	   TEXT
end

puts something

def something2
	 <<~TEXT
	 これはヒアドキュメントです。
	      <<~を使うとインデントが無視されます。
	   TEXT
end

puts something2

name = 'Alice'
a = <<TEXT
 ようこそ #{name}さん！
 以下のめせーじをご覧ください。
TEXT
puts a

b = <<'TEXT'
 ようこそ #{name}さん！
 以下のめせーじをご覧ください。
TEXT
puts b

c = <<"TEXT"
 ようこそ #{name}さん！
 以下のめせーじをご覧ください。
TEXT
puts c

#ヒアドキュメントを直接引数として渡す(prependは渡された文字列を先頭に追加するメソッド)
a = 'RUby'
a.prepend(<<TEXT)
Java
PHP
TEXT
puts a

#ヒアドキュメントで作成した文字列に対して、直接upcaseメソッドを呼び出す
b = <<TEXT.upcase
Hello,
Goo-bye.
TEXT
puts b

puts sprintf('%0.3f', 1.2)
puts '%0.3f' % 1.2

puts sprintf('%0.3f + %0.3f', 1.2, 0.48)
puts '%0.3f + %0.3f' %[1.2, 0.48]

puts 123.to_s

puts [10,20,30].join

puts 'Hi!'*10

puts String.new('Hello')

puts "\u3042\u3044\u3046"

puts 'a'

puts 'abc'

puts ''

puts ?a