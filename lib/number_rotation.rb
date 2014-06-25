class NumberRotation
	def reverse_number(x)
		a = x.to_s
		b = a.reverse
		return b.to_i
	end
	def rotate_right(x, pos = 1)
		while pos >= 1
			x = move_digit_right(x)	
			pos-=1
		end
		return x
	end
	def rotate_left(x, pos = 1)
		while pos >= 1
			x = move_digit_left(x)	
			pos-=1
		end
		return x
	end
	private 
	def move_digit_right(x)
		digits = x.to_s.scan(/./)
		rx = ""
		for i in 1..(digits.size-1)
			rx << digits[i]
		end
		rx << digits[0]
		return rx.to_i
	end
	def move_digit_left(x)
		digits = x.to_s.scan(/./)
		rx = ""
		rx << digits[digits.size - 1]
		for i in 0..(digits.size - 2)
			rx << digits[i]
		end
		return rx.to_i
	end
end
