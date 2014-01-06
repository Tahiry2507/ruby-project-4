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
	puts "Loops using For is over\n\n"

	# c) Do some math

	a = 40
	b = 70
	c = 100
	d = c - (a + b)
	
	total = a + b + c
	x = total * 2
	d = x / 16

	puts "d is equal to #{d}"

	# g) Provide an example of using "&&" and "||"

	if a < b && d > b
		puts "b is between a and c"
	end

	if a < b || b > 40
		puts "b is greater than a"
	end
	