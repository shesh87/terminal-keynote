#Keynote displays & advances the slides
#put all slides in an array then .each 

require 'terminfo'
require 'pp'
# pp TermInfo.screen_size

class Keynote
	attr_reader :slide, :width

	def initialize(file)
		@slide = IO.read(file).split("\n----\n")
		# size = TermInfo.screen_size
		# @width = size[0]
		# @height = size[1]
	end


	def slideshow(number)
		@number = number
		puts "\n" * 15
		puts slide[number].center(173)
		puts "\n" * 15
		
	end
end



#____________________________________________


apple = Keynote.new "my_slides"

puts apple.slideshow(0)
puts "<- Previous || Stop || Next ->"
answer2 = gets.chomp
answer = answer2.downcase

count = 0

if answer == "next"
	if count == 2
		count = 0
		apple.slideshow(count)
	else
		count +=1
		apple.slideshow(count)
	end
elsif answer == "previous"
	count -=1
	apple.slideshow(count)
elsif answer == "stop"
else
	puts "Please enter 'Previous', 'Next' or 'Stop'."
end



while answer != "stop"
	puts "<- Previous || Stop || Next ->"
	answer2 = gets.chomp
	answer = answer2.downcase

	if answer == "next"
		if count == 2
			count = 0
			apple.slideshow(count)
		else
			count +=1
			apple.slideshow(count)
		end
	elsif answer == "previous"
		count -=1
		apple.slideshow(count)
	elsif answer == "stop"
	else
		puts "Please enter 'Previous', 'Next' or 'Stop'."
	end
end




