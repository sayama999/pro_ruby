def liquid?(temperature)
	# 0度以上100度未満であれば液体
	0 <= temperature && temperature < 100
end

p "-1:#{liquid?(-1)}"
p "0:#{liquid?(0)}"
p "99:#{liquid?(99)}"
p "100:#{liquid?(100)}"

def liquid2?(temperature)
	# 0度以上100度未満であれば液体
	(0...100).include?(temperature)
end

p "-1:#{liquid2?(-1)}"
p "0:#{liquid2?(0)}"
p "99:#{liquid2?(99)}"
p "100:#{liquid2?(100)}"