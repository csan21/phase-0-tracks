# Encrypt method

# - define a method
# - ask user for input
# - set variable called "secrets" to user input value
# - use while loop to advance every letter of a string one letter forward until all letters have been changed
# 	- use .next on the first letter to advance one letter forward
# 		- if character is " " then do nothing and procede to next character

def encrypt
 puts "Enter your message:"
 secrets = gets.chomp
 
 index = 0

while index < secrets.length
	secrets[index] = secrets[index].next
	index += 1
end
	if 
		secrets.include? '!'
		secrets.gsub!('!', ' ')
	end
puts secrets
end

puts encrypt



# Decrypt method

# - define a method
# - ask user for encrypted message
# - set variable called "message" to user input value
# - use until loop until all letters have an identified index 
# 	- find index of every letter in the "message" in relation to the alphabet
	# - subtract 1 from the index of every letter
	# - find the corresponding letter with the index using the alphabet

def decrypt
    puts "Enter your encrypted message:"
    message = gets.chomp
    alphabet = "abcdefghijklmnopqrstuvwxyz"

    index = 0

while index < message.length
	convert_num = alphabet.index(message[index])
	convert_num -= 1
	message[index] = alphabet[convert_num]
	index += 1
end	
puts message
end

puts decrypt

