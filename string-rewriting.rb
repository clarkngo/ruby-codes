class Challenge3
	attr_reader :input_string

	def initialize(input_string)
		@input_string = input_string
	end

  def rewrite
		arr_string = @input_string.split('')

		arr_rewrite = []

		# fence post
		arr_rewrite << 1
		arr_rewrite << arr_string[0]

		for i in 1..arr_string.length - 1
			# if same letter
			if arr_string[i] == arr_string[i - 1]
				# access the count for the letter and add 1
				arr_rewrite[arr_rewrite.length - 2] = arr_rewrite[arr_rewrite.length - 2] + 1
			else 
				# else new letter
				arr_rewrite << 1
				arr_rewrite << arr_string[i]
			end
		end

		arr_rewrite.join("")
  end
end

	
challenge3 = Challenge3.new('aaabbbccaadd')
result = challenge3.input_string
puts challenge3.rewrite