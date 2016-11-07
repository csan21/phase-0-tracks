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




