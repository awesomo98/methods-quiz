module MethodsQuiz
	
	def has_teen?(a,b,c)
		if (a >= 13 && 19 >= a) || (b >= 13 && 19 >= b) || (c >= 13 && 19 >= c)
			return true
		else
			return false
		end
	end
	
	# TODO - write not_string
	
	def icy_hot(a,b)
		if ((a < 0) && (b > 100)) || ((a > 100) && (b < 0))
			return true
		else
			return false
		end
	end
	
	def closer_to(a,b,c)
		if ((b-a).abs) < ((c-a).abs)
			return b
		end
		if ((c-a).abs) < ((b-a).abs)
			return c
		end
		if ((b-a).abs) == ((c-a).abs)
			return 0
		end
	end

	# TODO - write two_as_one?

	# TODO - write pig_latinify

end