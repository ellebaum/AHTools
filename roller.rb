class String
def black;          "\e[30m#{self}\e[0m" end
def red;            "\e[31m#{self}\e[0m" end
def green;          "\e[32m#{self}\e[0m" end
def brown;          "\e[33m#{self}\e[0m" end
def blue;           "\e[34m#{self}\e[0m" end
def magenta;        "\e[35m#{self}\e[0m" end
def cyan;           "\e[36m#{self}\e[0m" end
def gray;           "\e[37m#{self}\e[0m" end

def bg_black;       "\e[40m#{self}\e[0m" end
def bg_red;         "\e[41m#{self}\e[0m" end
def bg_green;       "\e[42m#{self}\e[0m" end
def bg_brown;       "\e[43m#{self}\e[0m" end
def bg_blue;        "\e[44m#{self}\e[0m" end
def bg_magenta;     "\e[45m#{self}\e[0m" end
def bg_cyan;        "\e[46m#{self}\e[0m" end
def bg_gray;        "\e[47m#{self}\e[0m" end

def bold;           "\e[1m#{self}\e[22m" end
def italic;         "\e[3m#{self}\e[23m" end
def underline;      "\e[4m#{self}\e[24m" end
def blink;          "\e[5m#{self}\e[25m" end
def reverse_color;  "\e[7m#{self}\e[27m" end
end

loop do

	normalCount = 0
	blessedCount = 0
	cursedCount = 0

	puts "------------------------------------------------"
	puts "How many dice are we rolling? (Ctrl + c to exit)"
	amount = gets.chomp.to_i

	amount.times do
		roll = 1 + rand(6).to_i

		if roll >= 6
			blessedCount += 1
			normalCount += 1
			cursedCount += 1
			puts "You roll a ".green + roll.to_s.green + ".".green
		elsif roll >= 5
			blessedCount += 1
			normalCount += 1
			puts "You roll a ".green + roll.to_s.green + ".".green
		elsif roll >= 4
			blessedCount += 1
			puts "You roll a " + roll.to_s + "."
		else
			puts "You roll a " + roll.to_s + "."
		end
	end

	puts "------------------------------------------------"
	puts "If you are " + "Blessed".blue + ", you have " + blessedCount.to_s + " successes."
	puts "If you are " + "Cursed".red + ", you have "  + cursedCount.to_s  + " successes."
	puts "Otherwise".green + ", you have "          + normalCount.to_s  + " successes."

end
