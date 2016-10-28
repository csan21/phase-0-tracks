# Encrypt method

# - define a method
# - ask user for input
# - set variable called "secrets" to user input value
# - use while loop to advance every letter of a string one letter forward until all letters have been changed
# 	- use .next on the first letter to advance one letter forward
# 		- if character is " " then do nothing and procede to next character

def encrypt(secrets)
 
 index = 0

while index < secrets.length
	secrets[index] = secrets[index].next
		if 
		secrets.include? '!'
		secrets.gsub!('!', ' ')
		end
	index += 1
end
	if 
		secrets.include? 'ab'
		secrets.gsub!('b', '')
	end
puts secrets
end


# Decrypt method

# - define a method
# - ask user for encrypted message
# - set variable called "message" to user input value
# - use until loop until all letters have an identified index 
# 	- find index of every letter in the "message" in relation to the alphabet
	# - subtract 1 from the index of every letter
	# - find the corresponding letter with the index using the alphabet

def decrypt(message)

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

# Release 3 Test

# puts encrypt("abc")
# puts encrypt("zed")
# puts decrypt("bcd")
# puts decrypt("afe")

# decrypt(encrypt("swordfish"))

# * It works because its running one method on top of another. It is not one method written within another but actually two separate methods.

# Pseudo code for interface

# - Ask the user whether they would like to encrypt or decrypt
# 	- Call appropriate method 
# - Ask user for password
# 	- Use password as arguement for correct method
# - Print result and exit program

puts "Would you like to encrypt or decrypt?" 
	preference = gets.chomp
		if preference == "encrypt"
			puts "Enter password"
			password = gets.chomp
			puts encrypt(password)
		else
			puts "Enter password"
			password = gets.chomp
			puts decrypt(password)
		end

puts "Thank you for using our services, Good-Bye."

