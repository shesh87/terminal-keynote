#Keynote displays & advances the slides
#put all slides in an array then .each 

require 'terminfo'

class Keynote
	
	def slide1
		one = IO.read("terminal_slide1")
		puts "#{one}"
	end
	def slide2
		two = IO.read("terminal_slide2")
		puts "#{two}"
	end
	def slide3
		three = IO.read("terminal_slide3")
		puts "#{three}"
	end
end



#____________________________________________


apple = Keynote.new

puts "<- Previous || Next ->"
answer2 = gets.chomp
answer = answer2.downcase

if answer == "next"
	apple.slide1
elsif answer == "previous"
	apple.slide3
else
	puts "Please enter either 'Previous' or 'Next'."
end






