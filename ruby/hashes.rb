### INTERIOR DESIGNER ###
# - Ask user for name
# - Ask user for age
# - Ask user for number of children
# - Ask user for decor theme
# - Print hash out for user to see
# - Give user chance to update keys
# - Print hash again

# array

user_answers = []

puts "Enter client's name:"
	name = gets.chomp
	user_answers << name

puts "Enter client's age:"
	age = gets.chomp.to_i
	user_answers << age

puts "Enter number of children in household:"
	children = gets.chomp.to_i
	user_answers << children

puts "Enter decor theme:"
	decor = gets.chomp
	user_answers << decor

p user_answers

# hash

information = {
	name: name,
	age: age,
	children: children,
	decor: decor,
}

p information

valid_input = false

until valid_input

	puts "Please review that the information above is correct."
	puts "If you would like to update a section type the section name."
	puts "If the information is correct, please type 'none' to exit"
	
	input = gets.chomp
		if input == "name"
			puts "Update name:"
			information[:name] = gets.chomp.to_sym
		
		elsif input == "age"
			puts "Update age:"
			information[:age] = gets.chomp.to_sym

		elsif input == "children"
			puts "Update number of children:"
			information[:children] = gets.chomp.to_sym

		elsif input == "decor"
			puts "Update decor theme:"
			information[:decor] = gets.chomp.to_sym

		else input == "none"
			valid_input = true
		end
p information
end

puts "Thank you, you're information is saved!"