# - 0. Write an instance method that calculates a value and memoizes the result
# if the method contains a parameter, use memoize after the method
def squared(num1)
	num1 ** 2
end
memoize :squared


# - 0.1 if working with a method that doesn't take parameters, it could be written as such
# - assuming the method is contained within a class/object that has firstname and lastname properies
# - uses ||= to assign value on the right to the variable on the left if the variable is not true
def fullname
	@fullname ||= "#{firstname} #{lastname}"
end


# - 1. Write a method that handles any errors raised
def squared(num)
	# If num is not numeric, raise and Argument Error
	raise ArgumentError, "Argument is not numeric" unless x.is_a? Numeric
	# If num is numeric, continue with the calculation
	num ** 2
end


# - 2. Write a method that accepts a block and calls it with a single parameter; write another method to use it
def random_numbers
	puts "Follow are two random numbers between 0 and 100"
	yield rand(100), rand(100)if block_given?
end

# - 3. Write a method that returns the email address only from a random string
# Define a random string to be scanned using an email regular expression
@randomString = "Casey Morris caseymorris@example.com"
# Take the variable and scan using the email regex
@randomString.scan(/\b[A-Z0-9._%+-]+@[A-Z0-9.-]+\.[A-Z]{2,4}\b/i) { |x| puts x }


# - 4. Write a method to invert a hash without using Hash#invert
# Using Hash#invert will discard all but the last key/value pair if there are multiples with the same value
# Extend the Hash class
class Hash
	# Define method to invert hashes.
	def hash_invert
		# Iterate over the collection and invert keys and values
		each_with_object({}) do |(key, value),out|
			out[value] ||= ""
			out[value] << key
		end
	end 
end
hash = {"firstname" => "casey", "lastname" => "morris"};
hash.hash_invert # would output {"casey" => "firstname", "morris" => "lastname"}


# - 5. Write a function to return the Nth number of Fibonacci sequence.
# Write a recursive function that uses the formula of F(n-1) + F(n-2) until n = 1 or less
def fibonacci(n)
	# if n is less than or equal to 1, simply return n
	return n if n <= 1
	# if n is greater than 1 continue with the formula
	fibonacci(n-1) + fibonacci(n-2)
end
puts fibonacci(12) # would output 144


# - 6. Write a method to reverse the order of bits of a 32-bit integer
def reverse_bits(integer)
	#convert integer into 32-bit number, reverse bits, convert back into an integer
	[integer].pack('l').reverse.unpack('l')
end


# - 7. Write an extension to the Ruby String class called #to_pig_latin
class String
	def to_pig_latin
	end
end


# - 8. Write a method that, when called with a symbol, adds that symbol name as a new method
# Need to study metaprogramming more within Ruby, fairly advanced subject