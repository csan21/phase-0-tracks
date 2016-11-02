### INTERIOR DESIGNER ###
# - Ask user for name
# - Ask user for age
# - Ask user for number of children
# 	- If user says none, skip
# - Ask user for decor theme
# 	- If user enters decor_theme, ask for a new value

puts "Enter client's name:"
	name = gets.chomp

puts "Enter client's age:"
	age = gets.chomp.to_i

puts "Enter number of children in household:"
	children = gets.chomp.to_i

# answer = false

# until answer == true

puts "Enter decor theme:"
	decor = gets.chomp

# 		if decor == "decor_theme"
# 			answer = false
# 			puts "Enter a new value"
# 		else 
# 			answer = true
# 		end
# end

information = {
	name: name,
	age: age,
	children: children,
	decor: decor,
}

p information

puts "If you would like to update a section type name/age/children/or decor."
puts "If the information is correct, please type 'none' to exit"