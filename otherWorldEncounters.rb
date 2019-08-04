require 'json'
require 'colorize'
file = File.read "./otherWorldEncounters.json"
otherworld_deck_unshuffled = JSON.parse(file)

otherworld_deck_shuffled = otherworld_deck_unshuffled.shuffle

loop do
	puts "===================================================="
	puts "Where are we having an Other World encounter?"
	puts "----------------------------------------------------"
	puts "1.  Another Dimension         2.  Abyss           "
	puts "3.  City of the Great Race    4.  Yuggoth         "
	puts "5.  Great Hall of Celeano     6.  The Dreamlands  "
	puts "7.  Plateau of Leng           8.  R'lyeh          "
	puts "----------------------------------------------------"
	puts "Select a number...        (Ctrl + c to quit)"
	puts "----------------------------------------------------"

	input = gets.chomp.to_i

	if input == 1 #AD is RBYG
		drawn_card = otherworld_deck_shuffled.shift
		if drawn_card["color"] == "white"
			puts "The Stars are Right. Shuffle the Gate deck and keep drawing until you get an encounter of the right color."
			otherworld_deck_shuffled = otherworld_deck_unshuffled.shuffle
		elsif drawn_card["color"] == "red" || drawn_card["color"] == "blue" || drawn_card["color"] == "yellow" || drawn_card["color"] == "green"
			puts "You drew a " + drawn_card["color"] + " card!"
			if drawn_card["Another Dimension"]
				puts drawn_card["Another Dimension"]
			else
				puts drawn_card["Other"]
			end
		else
			puts "You drew a " + drawn_card["color"] + " card! Draw Again."
		end
	elsif input == 2 #Abyss is RB
		drawn_card = otherworld_deck_shuffled.shift
		if drawn_card["color"] == "white"
			puts "The Stars are Right. Shuffle the Gate deck and keep drawing until you get an encounter of the right color."
			otherworld_deck_shuffled = otherworld_deck_unshuffled.shuffle
		elsif drawn_card["color"] == "red" || drawn_card["color"] == "blue"
			puts "You drew a " + drawn_card["color"] + " card!"
			if drawn_card["Abyss"]
				puts drawn_card["Abyss"]
			else
				puts drawn_card["Other"]
			end
		else
			puts "You drew a " + drawn_card["color"] + " card! Draw Again."
		end
	elsif input == 3 #City is GY
		drawn_card = otherworld_deck_shuffled.shift
		if drawn_card["color"] == "white"
			puts "The Stars are Right. Shuffle the Gate deck and keep drawing until you get an encounter of the right color."
			otherworld_deck_shuffled = otherworld_deck_unshuffled.shuffle
		elsif drawn_card["color"] == "yellow" || drawn_card["color"] == "green"
			puts "You drew a " + drawn_card["color"] + " card!"
			if drawn_card["City of the Great Race"]
				puts drawn_card["City of the Great Race"]
			else
				puts drawn_card["Other"]
			end
		else
			puts "You drew a " + drawn_card["color"] + " card! Draw Again."
		end
	elsif input == 4 #Yug is BY
		drawn_card = otherworld_deck_shuffled.shift
		if drawn_card["color"] == "white"
			puts "The Stars are Right. Shuffle the Gate deck and keep drawing until you get an encounter of the right color."
			otherworld_deck_shuffled = otherworld_deck_unshuffled.shuffle
		elsif drawn_card["color"] == "blue" || drawn_card["color"] == "yellow"
			puts "You drew a " + drawn_card["color"] + " card!"
			if drawn_card["Yuggoth"]
				puts drawn_card["Yuggoth"]
			else
				puts drawn_card["Other"]
			end
		else
			puts "You drew a " + drawn_card["color"] + " card! Draw Again."
		end
	elsif input == 5 #Great is BG
		drawn_card = otherworld_deck_shuffled.shift
		if drawn_card["color"] == "white"
			puts "The Stars are Right. Shuffle the Gate deck and keep drawing until you get an encounter of the right color."
			otherworld_deck_shuffled = otherworld_deck_unshuffled.shuffle
		elsif drawn_card["color"] == "blue" || drawn_card["color"] == "green"
			puts "You drew a " + drawn_card["color"] + " card!"
			if drawn_card["Great Hall of Celeano"]
				puts drawn_card["Great Hall of Celeano"]
			else
				puts drawn_card["Other"]
			end
		else
			puts "You drew a " + drawn_card["color"] + " card! Draw Again."
		end
	elsif input == 6 #Dream is RBYG
		drawn_card = otherworld_deck_shuffled.shift
		if drawn_card["color"] == "white"
			puts "The Stars are Right. Shuffle the Gate deck and keep drawing until you get an encounter of the right color."
			otherworld_deck_shuffled = otherworld_deck_unshuffled.shuffle
		elsif drawn_card["color"] == "red" || drawn_card["color"] == "blue" || drawn_card["color"] == "yellow" || drawn_card["color"] == "green"
			puts "You drew a " + drawn_card["color"] + " card!"
			if drawn_card["The Dreamlands"]
				puts drawn_card["The Dreamlands"]
			else
				puts drawn_card["Other"]
			end
		else
			puts "You drew a " + drawn_card["color"] + " card! Draw Again."
		end
	elsif input == 7 #Plat is RG
		drawn_card = otherworld_deck_shuffled.shift
		if drawn_card["color"] == "white"
			puts "The Stars are Right. Shuffle the Gate deck and keep drawing until you get an encounter of the right color."
			otherworld_deck_shuffled = otherworld_deck_unshuffled.shuffle
		elsif drawn_card["color"] == "red" || drawn_card["color"] == "green"
			puts "You drew a " + drawn_card["color"] + " card!"
			if drawn_card["Plateau of Leng"]
				puts drawn_card["Plateau of Leng"]
			else
				puts drawn_card["Other"]
			end
		else
			puts "You drew a " + drawn_card["color"] + " card! Draw Again."
		end
	elsif input == 8 #R'lyeh is RY
		drawn_card = otherworld_deck_shuffled.shift
		if drawn_card["color"] == "white"
			puts "The Stars are Right. Shuffle the Gate deck and keep drawing until you get an encounter of the right color."
			otherworld_deck_shuffled = otherworld_deck_unshuffled.shuffle
		elsif drawn_card["color"] == "red" || drawn_card["color"] == "yellow"
			puts "You drew a " + drawn_card["color"] + " card!"
			if drawn_card["R'lyeh"]
				puts drawn_card["R'lyeh"]
			else
				puts drawn_card["Other"]
			end
		else
			puts "You drew a " + drawn_card["color"] + " card! Draw Again."
		end
	end
end