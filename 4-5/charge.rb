def charge(age)
	case age
	# 0Î‚©‚ç5Î
	when 0..5
		0
	# 6Î‚©‚ç12Î
	when 6..12
		300
	# 13Î‚©‚ç18Î
	when 13..18
		600
	# ‚»‚êˆÈŠO‚Ìê‡
	else
		1000
	end
end
p "3:#{charge(3)}"
p "12:#{charge(12)}"
p "16:#{charge(16)}"
p "25:#{charge(25)}"
	