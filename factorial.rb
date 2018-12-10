class Challenge4
	def self.factorial(number)
		_factorial(number, 1)
	end

	private

	def self._factorial(number, value)
		if number == 0
			1
		else 
			number * _factorial(number - 1, number)
		end
	end
end
