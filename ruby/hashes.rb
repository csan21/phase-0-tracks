### INTERIOR DESIGNER ###
# - Ask user for name
# - Ask user for age
# - Ask user for number of children
# 	- If user says none, skip
# - Ask user for decor theme
# 	- If user enters decor_theme, ask for a new value

puts "Enter client's name:"
	name: = gets.chomp

puts "Enter client's age:"
	age: = gets.chomp

puts "Enter number of children in household:"
	children: = gets.chomp.downcase

		if children: == "none"
			has_children = false
		end

puts "Enter decor theme:"
	decor: = gets.chomp

		if decor: == "decor_theme"
			puts "Enter a new value"
		end