def charge(age)
	case age
	# 0�΂���5��
	when 0..5
		0
	# 6�΂���12��
	when 6..12
		300
	# 13�΂���18��
	when 13..18
		600
	# ����ȊO�̏ꍇ
	else
		1000
	end
end
p "3:#{charge(3)}"
p "12:#{charge(12)}"
p "16:#{charge(16)}"
p "25:#{charge(25)}"
	