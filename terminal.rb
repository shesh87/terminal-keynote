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
	

	# def slide1
	# 	one = IO.read("terminal_slide1")
	# 	puts "\n" * 15
	# 	puts "#{one}".center(173)
	# 	puts "\n" * 15
	# end
	def slideshow(number)
		@number = number
		slide = IO.read("my_slides").split("\n----\n")
		# slide.to_enum.with_index(1)
		# slide.each do |line|
		#  	puts line.center(173)
		# end
		
		# slide.each do
		# 	puts "\n" * 15
		#  	puts slide[number].center(173)
		#  	puts "\n" * 15
		# end
		puts number
		puts "\n" * 15
		puts slide[number].center(173)
		puts "\n" * 15
		
	end
end



#____________________________________________


apple = Keynote.new

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
	# puts "Good-Bye"
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
		# puts "Good-Bye"
	else
		puts "Please enter 'Previous', 'Next' or 'Stop'."
	end
end




