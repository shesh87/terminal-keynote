#Keynote displays & advances the slides
#put all slides in an array then .each 

require 'terminfo'
require 'pp'

# pp TermInfo.screen_size

class Keynote
	# attr_reader :width
	# screen = TermInfo.screen_size
	# height = screen[0]
	# width = screen[1]
	# sc_width = width.to_i
	

	def slide1
		one = IO.read("terminal_slide1")
		puts "#{one}".center(173)
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






