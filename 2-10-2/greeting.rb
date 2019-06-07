def greeting(country)
	# countryがnil(またはfalse)ならメッセージを返してメソッドを抜ける
	country or return 'countryを入力してください'

	if country == 'Japan'
		'こんにちは'
	else
		'Hello'
	end
end
puts greeting(nil)
puts greeting('Japan')
puts greeting('America')