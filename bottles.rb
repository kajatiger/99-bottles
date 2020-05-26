class Bottles

	def song
		verses(99, 42, 0)
	end

	def verses(*args)
		numbers = (args.last..args.first).to_a.reverse
		numbers.map { |number| verse(number) }.join("\n")
	end

	def verse(number)
		if number > 2
			initial_number = number.to_s + " bottles"
			remaining_number = (number - 1).to_s + " bottles"
			passing_beer = "Take one down and pass it around"
		elsif number == 2
			initial_number = number.to_s + " bottles"
			remaining_number = (number - 1).to_s + " bottle"
			passing_beer = "Take one down and pass it around"
		elsif number == 1
			initial_number = number.to_s + " bottle"
			remaining_number = "no more bottles"
			passing_beer = "Take it down and pass it around"
		elsif number == 0
			initial_number = "no more bottles"
			remaining_number = "99 bottles"
			passing_beer = "Go to the store and buy some more"
		end


		<<-VERSE
#{initial_number.capitalize} of beer on the wall, #{initial_number} of beer.
#{passing_beer}, #{remaining_number} of beer on the wall.
VERSE
	end

end