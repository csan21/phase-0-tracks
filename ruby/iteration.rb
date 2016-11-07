# Worked with Dan Maher
#///// Release 0 + 1

def greeting
	name1 = "TJ"
	name2 = "Rj"
	name3 = "Bj"
	yield(name1, name2, name3)
end

greeting { |name1, name2, name3| puts "#{name1}, #{name2}, #{name3} thank the sun!" }

colors = ["red", "green", "blue"]

state_capitals = {
	illinois: "Springfield",
	wisconsin: "Madison",
	arizona: "Phoenix"
}

colors.each { |color| puts "Likes the color #{color}" }

colors.map! do |color|
	puts color
	color.reverse
end

p colors

p state_capitals.each { |state_capitals| puts "Lets visit #{state_capitals}!" }

#///// Release 2

#array1

numbers = [67, 4, 4, 1, 82, 3, 734, 2, 5, 1, 3, 75]

p numbers

numbers.each do |n|
  if n < 5
    numbers.delete(n)
  end
end

p numbers

#array2

numbers2 = [12, 6, 7, 10, 24, 68, 900, 10, 1, 2]

numbers2.keep_if { |n| n < 5 }

p numbers2

#array3

numbers3 = [7, 8, 9, 10, 11, 12, 20, 22, 24, 26]

p numbers3

numbers3_after = numbers3.drop_while { |n| numbers3.index(n) <= 5 }

p numbers3_after
