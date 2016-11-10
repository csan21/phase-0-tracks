module Shout
	def self.yell_angrily(words)
    	words + "!!!" + " :("
	end

	def self.yelling_happily(words)
		words + "!!!" + " :)"
	end
end

Shout.yell_angrily("GO AWAY")
Shout.yelling_happily("COME BACK")