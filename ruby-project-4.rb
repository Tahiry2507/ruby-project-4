# Step 1
require 'json'
require 'yaml'
require 'csv'
# Given the following hash:
hash = {"Chevrolet" => "Malibu", "Ford" => "Mustang", :Ford => "Taurus", :Chevrolet => "Cobalt"}

# Convert it into the following formats:

	# JSON
	hash.to_json

	# YAML
	hash.to_yaml
	
	# CSV
	CSV.open("hash.csv", "wb") {|csv| hash.to_a.each {|elem| csv << elem} }
# Step 2
# a) Read on Ruby classes
# b) Create a simple Ruby class called "Book"

	class Book
		def author_name=(name)
			@name = name
		end

		def author_name
			@name
		end
	end

	book1 = Book.new
	book1.author_name= "The Book of Mormon"
	puts book1.author_name

	book2 = Book.new
	book2.author_name= "Robinson Crusoe"
	puts book2.author_name

	puts book1.author_name

	# book1's author_name doesn't change to "Robinson Crusoe" Ruby is using what we call "Syntactic sugar"

# 3- Basic Ruby Stuff
	# a)Create a constant variable. What are constants? Why do we use them? How are they different than other ruby variables?

		# TAHIRY = "Aina Tahiry"
		
		# A constant is a variable with a fixed value and its value remains constant for 
		# the duration of the program. Constant variable names begin with a capital letter.

	# b) implement a variety of loops

	number = 0

	while number <= 10
		puts number
		number += 1
	end
	puts "Loops using While is over"

	until number == 0 do
		puts number
		number -= 1
	end
	puts "Loops using until is over"


	for number in 0..10
		puts number
	end

	# c) Do some math

	a = 40
	b = 70
	c = 100
	d = c - (a + b)
	
	total = a + b + c
	x = total * 2
	d = x / 16

	puts "d is equal to #{d}"
	# d) What is a boolean?
	
		# a boolean is like a variable that can only have one of two possible values, true or false.
	
	# e) if a is a boolean (set to true), what would !a return?
	
		# if a is a boolean (true) !a would return nil
	
	# f) How are these two statements different? a == "hi" and a = "hi"
	
		#  a == 'hi' means a is equal to the string 'hi' ( usually used on comparison or loops)
		#  a = 'hi' the variable a is set to the value 'hi'

	# g) Provide an example of using "&&" and "||"

	if a < b && d > b
		puts "b is between a and c"
	end

	if a < b || b > 40
		puts "b is greater than a"
	end
	
	# h) Implement a case statement
	
	print "What is your name?"
	name = gets.chomp
	case name
	when "Steve", "Jacob", "Tahiry"
		puts "Welcome, #{name}"
	else
		puts "Sorry, I don't know you! :("
	end
	
	# i) Create a loop that prints 1 through 20
	
	w = 1
	until w > 20 do
		puts w
		w += 1
	end
	
