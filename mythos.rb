require 'json'
require 'colorize'
file = File.read "./mythos.json"
mythos_deck_unshuffled = JSON.parse(file)


mythos_deck_shuffled = mythos_deck_unshuffled.shuffle
current_rumor_card = {}
current_environment_card = {}

loop do
	puts "\n"
	puts "Environment: ".colorize(:light_blue) + current_environment_card["text"].to_s
	puts "Rumor: ".colorize(:light_red) + current_rumor_card["text"].to_s
	puts "===================================================="
	puts "Press Enter Draw a Mythos Card! (Ctrl + c to quit)"
	puts "Type 'rumor' to remove Rumor Card."
	puts "----------------------------------------------------"
	input = gets

	if input == "rumor\n"
		current_rumor_card.clear
	elsif input == "\n"
		drawn_card = mythos_deck_shuffled.shift
		#Headlines are returned to the bottom of the deck after being played. Some have "Closed" effects, which last for one turn
		#Environments are put into play, replacing the current Environment (which goes to the bottom of the deck)
		#Rumors are put into play unless there is already a Rumor in play, in which case they go straight to the bottom of the deck
		#Rumors go *BACK TO THE BOX* when they expire
		#"The Story Continues..." card does nothing except for shuffle the entire deck when drawn
		if drawn_card["type"] == "Unique"
			puts drawn_card["title"]
			puts drawn_card["text"]
			mythos_deck_shuffled = mythos_deck_unshuffled.shuffle
		elsif drawn_card["type"] == "Headline"
			puts drawn_card["title"] + "  (" + drawn_card["type"] + ")"
			puts "\n"
			puts drawn_card["text"]
			puts "\n"
			puts "Clue: ".colorize(:green)             + drawn_card["clue"]
			puts "Gate at: ".colorize(:yellow)          + drawn_card["gate"]
			puts "Monster movement: ".colorize(:red) + drawn_card["movement"].to_s
			mythos_deck_shuffled.push(drawn_card)
		#elsif drawn_card["type"].match(/Env/)
		elsif drawn_card["type"] == "Environment (Mystic)" || drawn_card["type"] =="Environment (Weather)" || drawn_card["type"] == "Environment (Urban)"
			puts drawn_card["title"] + "  (" + drawn_card["type"] + ")"
			puts "\n"
			puts drawn_card["text"]
			puts "\n"
			puts "Clue: ".colorize(:green)             + drawn_card["clue"]
			puts "Gate at: ".colorize(:yellow)          + drawn_card["gate"]
			puts "Monster movement: ".colorize(:red) + drawn_card["movement"].to_s
			mythos_deck_shuffled.push(current_environment_card)
			current_environment_card = drawn_card
		elsif drawn_card["type"] == "Rumor"
			#if current_rumor_card.nil? || current_rumor_card == 0
			if current_rumor_card == {}
				current_rumor_card = drawn_card
				puts drawn_card["title"] + "  (" + drawn_card["type"] + ")"
				puts "\n"
				puts drawn_card["text"]
				puts "\n"
			else
				puts "There is already a rumor! You avoided " + drawn_card["title"]
				mythos_deck_shuffled.push(drawn_card)
			end
			puts "Gate at: "          + drawn_card["gate"]
			puts "Monster movement: " + drawn_card["movement"].to_s
		end
	end
end