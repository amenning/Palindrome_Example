# The program takes a string containing only lettesr upon class initialization 
# and tests if the string is a palindrome 
#
# Author::		Carl Andrew Menning (mailto:menning23@gmail.com)
# Copyright:: 	Copyright (c) 2016 

# This class accepts a string upon intialization 
# It tests if the string contains only letters
# If not, it will request new user input until it only contains letters
# The is_only_letters? method tests that the string only contains letters
# The is_palindrome? method tests if the string is a palindrome
class Palindrome 
	# Two variables with read only access
	# string is the input string upon initialization
	# is_palindrome stores whether string is a palindrome
	attr_reader :string, :is_palindrome
	
	#Initialize and test if string only contains letters and then if palindrome
	def initialize(string)
		@is_palindrome = false
		not_letters = true
		while(not_letters)
			if is_only_letters? string
				not_letters = false
				@string = string.downcase
				is_palindrome? @string
			else
				puts "You must only enter letters; no symbols"
				begin
					string = gets.chomp
				rescue
					@string = nil
				end
			end
		end
	end

	private
		# Test if input string only contains letters using regex /\A[a-zA-Z]+/
		def is_only_letters?(input)
			if /\A[a-zA-Z]+/ =~ input
				true
			else
				false
			end
		end
		
		# Test if the string is a palindrome; spelled the same forwards and backwards
		def is_palindrome?(test_string)
			str_length = test_string.length
			range = (0..(str_length/2-1))
			for i in range	
				if test_string[i]!=test_string[str_length-i-1]
					return @is_palindrome = false
				end
			end
			return @is_palindrome = true
		end
end