require 'json'

stMarys = [
	"One of the staff's physicians talks some sense into you. \n
	You are disabused of certain crazy but accurate notions. Lose 1 Clue token.",

	"You agree to undergo an experimental treatment. Roll a die. \n
	On a 1-3, grain that many Stamina. On a 4-6, nothing happens.",

	"Nurse Sharon slips something into your hand when the doctor isn't looking. \n
	Pass a Sneak (-1) check to keep anyone else from noticing. If you do, you \n
	later examine the object and find it to be an old parchment with a spell \n
	scratched on it. Draw 1 Spell. If you fail ,an orderly takes it \n
	away from you and you gain nothing.",

	"Make a Luck (-1) check. If you pass, you realize that Dr. Mortimore \n
	is sneaking up behind you with a hypodermic needle filled with a \n
	phosphorescent gel. You avoid his experiment and subdue the mad doctor. \n
	The city wards you with $3 and you gain 2 Sanity in the process. \n
	If you fail, lose 2 Sanity, then you are dumped in the street",

	"You sneak a peek at the medical records for a recent admission who \n
	was involved in a cult ritual. Pass a Lore (+0) check to learn \n
	something about the cult's methods. Gain 1 Clue token.",

	"The corpse you are examining isn't quite dead yet. It reaches out and grabs \n
	you by the throat. Lose 1 Sanity. Then, you must fight the corpse. \n
	If you pass a Combat (-1) check, you defeat it and gain 1 Clue token. \n 
	Otherwise, move to the street.",

	"The doctor escorts you behind a curtain where the body of some \n
	other unfortunate investigator has been laid. The corpse has been torn to shreds. \n
	Pass a Will (-1) check or lose 1 Sanity. If you pass, you may also search \n
	the body and find a helpful item. Draw 1 Unique Item. \n
	If you fail, you run away screaming. Move to the street."
]

stMarys.to_json

puts stMarys

woods = [
	"You trip over an object which turns out to be a rusty lockbox. \n
	If you open it, make a Luck (+0) check and consult the following chart: \n 
	Successes: \n 
	0) A rotted human foot. Lose 1 Sanity. \n 
	1) Draw 1 Common Item \n 
	2) Draw 1 Unique Item \n 
	3+) $10 in jewelry.",

	"You find a sleeping Sheldon Gang member near the still. Make a Sneak (-2) check \n
	to try to swipe the shotgun he has dropped on the ground. If you pass, take a Shotgun \n
	from the Common Item deck if there is one. If you fail, the guard awakens. You are \n
	caught and beaten, losing 2 Stamina, but you escape with your life. Move to the street.",

	"You come across a cringing dog. Pass a Speed (-2) check to catch and calm him. \n
	If you have Food, you can discard that to automatically pass the check instead of rolling. \n
	You see by his collar that he is named Duke. Take his Ally card. \n
	If it isn't available, gain $3 as a reward for returning him to his owner, instead.",

	"You are bushwhacked by the Sheldon Gang. Pass a Luck (-1) check to avoid their trap. \n
	If you fail, lose 2 items of your choice and 2 Stamina",

	"You meet an old wise man in the grove who offers to share his wisdom with you. \n
	If you accept, lose your next turn and make a Lore (-2) check. \n
	If you pass, you may draw 1 Skill, or draw 2 Spells, or gain 4 Clue tokens. \n
	If you fail, nothing happens.",

	"You have stumbled onto a still owned by the Sheldon Gang. Make a Sneak (-1) check. \n
	If you pass, skulk away without being seen. If you fail, lose 2 Stamina as the \n
	Sheldon Gang works you over while escorting you from the woods. \n
	In either case, move to the street",

	"A gate and a monster appear!"
]

magick = [
	"Looking closely at a mummified head in the shop, you are \n
	horrified to find it looking back at you! Lose 1 Sanity.",

	"There is an old, locked trunk for sale for $5. If you buy it, \n
	make a Luck (+0) bheck and consult the chart below: \n 
	Successes: \n 
	0) Empty! \n 
	1) Gold coins! Roll 2 dice, add them together, and gain that much money. \n 
	2+) Jackpot! Draw 2 Unique Items!",

	"Miriam Beecher talks to you for awhile, explaining some very interesting \n
	theories she has concerning the Mythos. Gain 1 Clue token.",

	"You see an interesting book sitting open on Miriam Beecher's desk. \n
	Pass a Lore (-1) check or you peer closely at its pages only to realize \n
	too late that the book is CURSED...and now, so are you.",

	"Miriam Beecher, the shopkeeper, peers closely at your face, then screams, \n
	'They've marked you! Get out! Get out!' and throws you out. \n
	Move to the street and lose 1 Sanity from this unsettling incident.",

	"Looking into a glass ball, you receive a vision of things to come. \n
	Turn the top card of one location deck of your choice face up. \n
	The next investigator to have an encounter at that location draws that encounter card.",

	"Pass a Lore (-1) check to recognize an item that Miriam Beecher has underpriced. \n
	If you do so, draw 1 Unique Item. You may purchase it for half its list price (rounded up)."
]

curiositie = [
	"As you wander into the back of the shop, you hear a noise. \n
	Pass a Speed (-1) check or you look up just in time to see a descending club. \n
	Everything goes black. When you awaken, you are somewhere else. \n
	Draw a Mythos card and move to the gate location shown on it, \n
	then immediately have an encounter there.",

	"A sale takes place. All players may participate. Turn over the top 3 Common Item \n
	cards and have the top Unique Item card. Any player may buy one or more of these \n
	cards for their list price. If there is a disagreement over who gets to buy a \n
	certain card, you decide. Any items not sold are discarded.",

	"You examine an obscene statue. Pass a Luck (-2) check or else you feel a cold \n
	dread spread through your body as you hold it. you are CURSED.",

	"You weed through piles of junk looking for something useful. \n
	Make a Luck (-1) check to see what you find. \n
	If you pass, your search has resulted in success. \n 
	You may look at the top cards of both the Common and Unique Items decks. \n
	You may purchase one, both, or neither at list price. \n
	If you fail, there is little of interest here, but you may look at the \n
	top card of the Common Item deck and purchase it for its list price.",

	"Pass a Luck (-1) check or you accidentally drop an item. \n
	Discard 1 item of your choice. If you have no items to drop, \n
	then draw again for a different encounter.",

	"Jackpot! You find just what you've been looking for. Search either the Common \n
	or Unique Item deck and purchase any one item of your choice at list price.",

	"A pulsing void gapes behind a bookshelf, sending out waves of heat. \n
	Pass a Fight (-1) check or it sucks you in, hurling you into the Abyss. \n
	Have one encounter there, then immediately return."
]

newspaper = [
	"You accidentally tip over a bottle of ink and are aghast at the \n
	pattern the ink forms on the newsroom floor. Lose 1 Sanity.",

	"Flipping through the early edition, you are surprised to see that one of the classified \n
	ads begins with your name. Reading it, you realize that it contains several coded \n
	clues to the nature of the threat that faces Arkham. \n
	Pass a Lore (-1) check to gain 3 Clue tokens.",

	"You earn a hefty fee for a story and get a ride with Doyle Jefferies, the editor. \n
	Gain $2 and move to any location or street area in Arkham. \n
	If you move to a location, immediately have an encounter there.",

	"Pass a Luck (-1) check to find an article that a local citizen \n
	told you would shed light on the recent strange activities. Gain 1 Clue token.",

	"(1) Editor Doyle Jefferies offers you a Retainer in return \n
	for your fascinating stories. Take a Retainer card.",

	"(2) Editor Doyle Jefferies offers you a Retainer in return \n
	for your fascinating stories. Take a Retainer card.",

	"Earn $5 for a story."
]

train = [
	"A stranger in a turban steps off the Boston local train with a crazed look on his face. \n
	Make a Luck (-1) check. If you pass, the man pulls a strange object from beneath \n
	his cloak and gives it to you. Draw 1 Unique Item. \n
	If you fail, he pulls a poisoned blade out of his cloak and stabs you. \n 
	Roll a die and lose that much Stamina.",

	"Bill Washington moves the last of the baggage from his cart onto a \n
	truck and offers you a ride as he opens the driver's door. \n
	If you accept, move to any location or street area in Arkham. \n 
	If you move to a location, immediately have an encounter there.",

	"On the loading dock you investigate a large crate with strange markings. \n
	Make a Sneak (-1) check. If you pass, you find a very unusual item in the crate. \n 
	Gain 1 Unique Item. If you fail, Deputy Dingby catches you breaking it open. \n
	You are arrested and taken to the Police Station.",

	"Pay $3 at the Railroad Office to claim an item left in Lost and Found. \n
	If you do so, make a Luck (-2) check. If you pass, draw a Unique Item. \n
	If you fail, draw a Common Item.",

	"Joey 'the Rat' is huddled in the shadows of the train \n
	station and motions for you to come over. \n
	He has an item for sale. Draw the top Common Item card \n
	and pay $1 more than list price if you wish to purchase it",

	"The old train hand Bill Washington sits on the train platform \n
	playing his guitar as he awaits the next train. As you listen to \n
	his singing you feel yourself healing inside. Gain 2 points divided \n 
	between Stamina and Sanity however you choose.",

	"A well-dressed man is standing on the platform. He turns and greets you by name. \n
	Although he seems oddly familiar, you don't remember ever meeting him before. \n
	Then he steps off the platform into the path of a speeding train. \n
	Make a Speed (-2) check. If you pass, he vanishes as you leap right through him. \n
	On the ground, you find yourself clutching a scrap of paper. Gain 1 Spell. \n
	If you fail, he is obliterated before your eyes. Roll a die and lose that much Sanity."
]

admin = [
	"The Dean introduces you to an anthropology professor who \n
	gives you some insight into your investigation. Gain 1 Clue token.",

	"(1) Discuss the opportunity to sell a monograph with the President of the University. \n
	Pass a Lore (-1) check to make the sale and gain $5.",

	"You may choose to help an anthropology professor and his students \n
	decipher an ancient stone tablet. If so, make a Lore (-2) check. \n
	If you pass, you correctly interpret it, draw 1 Spell. \n
	If you fail, you mispronounce a word and are CURSED.",

	"A student mistakes you for a bursar. If you want to carry on the deception, \n
	make a Will (-2) check. If you pass, gain $8 in ill-gotten tuition money. \n
	If you fail, you're arrested and taken to the Police Station.",

	"(2) Discuss the opportunity to sell a monograph with the President of the University. \n
	Pass a Lore (-1) check to make the sale and gain $5.",

	"Your discussions on the Mythos lead campus security to conclude \n
	that you are off your rocker, and they escort you off campus. \n
	Move to Arkham Asylum and immediately have an encounter there.",

	"Pass a Will (-1) check to get the Dean to offer you a retainer \n
	to write a manuscript for the college. Gain a Retainer card."
]

library = [
	"Make a Will (+0) check and consult the chart below: \n 
	Successes: \n 
	0) Abigail tosses you out. Move to the street \n 
	1) Abigail lets you into a private section of the library where you find an ancient tome. \n
	   Draw 2 Spells and keep whichever one of them you want. \n 
	2+) Abigail loans you one of the strange items in the library's display case. Draw 1 Unique Item.",

	"Overdue book fines of $4. Pay up, or move to the street!",

	"You doze off and enter The Dreamlands. \n
	Have an encounter there, then immediately return here.",

	"Pass a Luck (-2) check to find $5 someone was using as a bookmark.",

	"You look up and see Abigail Foreman leaning over you with hands on \n
	hips and a frustrated look on her face. Make a Will (-1) check. \n
	If you pass, she helps you find the book you were looking for. \n
	Take the first TOME from the Unique Item deck. If you fail, you've \n 
	made too much noise. She escorts you out of the library. Move to the street.",

	"A book in a shadowy corner of the library begins \n
	to whisper terrible things to you. Lose 1 Sanity.",

	"You find an unusual book that radiates evil at the touch. \n
	You begin to read and are drawn into it. Make a Lore (-2) check. \n 
	If you pass, you obtain vast knowledge of the eldritch threat. \n
	Roll a die and gain that many Clue tokens. If you fail, \n
	the book consumes you - mind and soul - lose 2 Sanity and 2 Stamina."
]

science = [
	"Assisting a professor in his research, you find a valuable Spell. \n
	Draw 1 Spell. However, you must pass a Fight (-1) check or \n
	some sticky-fingered student steals one of your items. \n
	Lose 1 item of your choice.",

	"A professor of the occult asks you to hold a hideous statue that \n
	he believes to have strange powers while he reads a scroll. \n
	Energy shoots through your body. Make a Luck (-1) check. \n
	If you pass, your spirit rises from your body and you feel \n
	that you have the power to switch bodies with another investigator. \n
	You may choose another investigator from the pile of unused \n
	investigators and bring it into play as a new character, discarding \n
	your current investigator (along with all of his items, skills, trophies, etc). \n
	If you fail, nothing happens.",

	"You find a muscular, bored-looking man who challenges you to an arm wrestling match. \n
	Lose 2 Stamina if you accept. If this does not knock you unconscious, \n
	Sir William Brinton laughs and slaps your shoulder, offering to join your investigation. \n
	Take his Ally card. If he is not available, gain $5 instead.",

	"You find a student pounding on a strange device that he has hooked \n
	up to massive machinery. He states that it is a dimensional beam machine. \n
	If you offer to help him, make a Lore (-2) check. If you pass, beams shoot \n
	out in all directions, disrupting the gates open throughout the board. \n
	Roll a die for each open gate one at a time. On a success the gate is closed. \n
	However, you may not take it as a trophy, but instead return it to the \n
	pile of gate markers. If you fail, the machinery overheats and explodes. \n
	Roll a die and lose that much Stamina, then move to St. Mary's Hospital.",

	"As you enter the Department of Alchemy, a professor looks up in horror. \n
	He grabs an ancient artifact from a locked drawer in his desk and holds \n
	it up before your face, chanting and making symbolic motions with the item. \n
	If you are CURSED, discard the Curse. If you are not CURSED, then you are BLESSED.",

	"A chemical brew bubbles on a nearby Bunsen burner. \n
	It smells delicious. If you drink it, make a Luck (+0) check. \n
	If you pass, the strange liquid fortifies you. \n
	Roll a die and gain that many points, split between your \n
	Stamina and Sanity however you like. If you fail, the \n
	liquid turns out to be coffee. Gain 1 Stamina.",

	"An archaeology professor shows you an item he recovered \n
	in an Egyptian pyramid. If you have 2 or fewer Spells, \n
	it glows in your hands and you find yourself outside, still holding it. \n
	Not wanting to confront the professor again, you decide to keep it. \n
	Gain 1 Unique Item and move to the street. \n
	If you have more than 2 Spells, nothing happens."
]

docks = [
	"You open some crates on the dock. Inside you find some useful things. \n
	Draw 2 Common Items. Next, make a Luck (-1) check. \n
	If you pass, you get away without being seen. \n
	If you fail, you are arrested and taken to the Police Station.",

	"As you look out across the waves, you feel strangely compelled \n
	to throw yourself into the ocean's watery embrace. \n
	Pass a Will (+1) check or you are LOST IN TIME AND SPACE.",

	"You notice a piece of wood floating in the water; \n
	carved into it is the name of a ship long since sunk. \n
	As you touch it, visions of the drowning passengers' last moments \n
	of life flood through your mind. Pass a Speed (-1) check \n
	to hurl it away from you. If you fail, you fall to \n
	the ground with a cry. Lose 1 Sanity.",

	"You bump into Abner Weems, the local drunk. \n
	You help him find a place to sleep for the night, and he mumbles \n
	something to you over and over. Make a Luck (-1) check. \n
	If you pass, his mumbling is a magical chant. \n
	Draw 1 Spell. If you fail, it's gibberish. Nothing happens.",

	"Walking along the dock you see something floating in \n
	the water near the edge of the dock. You reach for it -- \n
	make a Luck (-1) check. If you pass, you dredge up something useful. \n
	Draw 1 Common Item. If you fail, you pull to the surface a tentacle \n
	that immediately wraps around your neck and drags you under \n
	the water and out to sea. Lose 1 Sanity and 3 Stamina before you can break free.",

	"A horrific stench draws your attention to the body of \n
	some bizarre marine creature, rotting on the edge of the docks. \n
	As you move towards it, an uneasy feeling grows in the pit of your stomach, \n
	as though you are meddling with something best left alone. \n
	Make a Will (-1) check. If you pass, lose 1 Sanity. \n
	If you fail, lose 2 Sanity. In either event, if you are not \n
	reduced to 0 Sanity, you find something clutched in its webbed hands. \n
	Draw 1 Unique Item.",

	"The dock workers are short-handed and offer you a job as a \n
	stevedore for the day. Make a Fight (+0) check. \n
	If you pass, gain $3 for every success you rolled. \n
	If you fail, the boss gets tired of your lollygagging \n
	and throws you out. Lose 1 Stamina and move to the street."
]

unnameable = [
	"In a dusty and decaying roll-top desk, you find a \n
	mysterious manuscript. If you read it, make a Lore (-1) check. \n
	If you pass, draw 1 Spell. If you fail, the manuscript is \n
	nothing but the insane babbling of a previous renter. \n
	Stay here next turn reading it, but gain 2 Clue tokens.",

	"You hear the scurrying and squeaking of a horde of rats \n
	from inside the walls. Abruptly, you realize that they are moving to \n
	surround you. Pass a Speed (-1) check to make it to the front door first. \n
	If you fail, you are LOST IN TIME AND SPACE.",

	"You notice a glint of light in a crevice. \n
	If you reach in, make a Luck (-1) check. \n
	If you pass, draw 1 Unique Item. \n
	If you fail, you feel a sharp pain as teeth clamp down on your hand. \n
	You manage to pull free, but you lose 2 Stamina and 1 Sanity.",

	"You bump into Eric Colt. \n
	He tells you a horrible tale of the Mythos to test your nerve. \n
	If you listen, lose 2 Sanity. If this doesn't drive you insane, \n
	take his Ally card if it is available. If it is not available, \n
	you may pump him for information instead. Gain 3 Clue tokens.",

	"Pass a Luck (-1) check to find a hidden cache \n
	concealed in the wall of an upstairs bedroom. Draw 1 Unique Item.",

	"The ceiling beam suddenly buckles. \n
	Make a Speed (-1) check. If you pass, \n
	move to the street. If you fail, lose 2 Stamina.",

	"A monster and gate appear!"
]

unvisited = [
	"You come across a man examining some old bones. \n
	Pass a Sneak (-1) check to get close enough to see what he's doing. \n
	He finally notices you and is impressed with your skills, \n
	introducing himself as John Legrasse. Take his Ally card if it's available, \n
	otherwise he shares a meal with you. \n
	Restore your Sanity and Stamina to their maximum values.",

	"Looking up at the night sky from the island, \n
	you see constellations that you've never seen before. \n
	The entire night sky is different here! \n
	Lose 1 Sanity and gain 1 Clue token.",

	"The willows sway in a wind that you cannot hear or feel, \n
	and for a moment, the hatred of these ancient trees for their \n
	invader who has come to their island drives you to your knees. \n
	Pass a Will (-2) check or lose 3 Sanity.",

	"You come across a large pile of human bones under the boughs \n
	of one of the willows on the isle. Lose 1 Sanity, \n
	but find a scroll among the bones. Draw 1 Spell.",

	"A group of hooded cultists are having a meeting among \n
	the standing stones on the island. Pass a Sneak (-1) check \n
	to overhear some of what they have to say. Gain 2 Clue tokens.",

	"As you start to climb back into your canoe and row to shore, \n
	you see a huge, shadowy shape disturb the water near the island. \n
	Waves of intense dread grip you, and you must pass a Will (-1) check or be CURSED.",

	"A silent man brushes past you on the trail. \n
	Your arm goes numb with cold from the brief contact,\n 
	and you whirl around to look at him, but he has disappeared. \n
	Lose 1 Stamina and pass a Will (-1) check or lose 1 Sanity as well."
]

lodge = [
	"Brushing up against a strange object in the hall, \n
	you feel stretched and thin, like your skin is too tight. \n
	Pass a Luck (-1) check or you are CURSED.",

	"You hear the quiet sounds of an intruder. \n
	If you investigate, you find a woman dressed in black. \n 
	She attacks you as soon as she sees you. Pass a Fight (-1) \n
	check to subdue her long enough to explain your investigation. \n
	You find out that her name is Ruby Standish and that she was robbing the Lodge. \n
	However, upon hearing your tale, she agrees to join you. \n
	Take her Ally card. If it is not available, draw a Unique Item instead.",

	"You find an old parchment in the study. \n
	Pass a Lore (-1) check to draw 2 Spells and keep one of your choice.",

	"(1) 'Care to join the Order?' Carl Sanford and several of \n
	his henchmen ask. If you accept, pay $3 and take a Silver Twilight Membership. \n
	If you decline, pass a Will (-1) check or lose 3 Stamina as the henchmen \n
	assist you out the door. Whether you pass or not, move to the street.",

	"Make a Sneak (-2) check. \n
	If you pass, you slip into the temple area of the Lodge and find 2 items of interest. \n
	Roll a die for each item. On a success, draw a Unique Item, otherwise draw a Common Item.",

	"Carl Sanford draws you into the study to talk and you feel \n
	the cold creep of dread listening to him. Make a Lore (-1) check. \n
	If you pass, your willpower stands up to the test of the \n
	ancient wizard and you even learn something of value. \n
	Gain 3 Clue tokens. If you fail, his hypnotic tones lull you into a trance. \n
	The conversation seems short, but when you leave the study, \n
	much time has passed and your thoughts are confused. \n
	Lose all of your Clue tokens and move to the street.",

	"(2) 'Care to join the Order?' Carl Sanford and several of \n
	his henchmen ask. If you accept, pay $3 and take a Silver Twilight Membership. \n
	If you decline, pass a Will (-1) check or lose 3 Stamina as the henchmen \n
	assist you out the door. Whether you pass or not, move to the street."
]

inner = [
	"Participating in the monthly ceremony, \n
	you witness great power and great evil. \n
	Lose up to 3 Sanity and gain that many Clue tokens.",

	"The Order of the Silver Twilight casts a \n
	banishment spell in their monthly ceremony. \n
	Spend 1 Sanity to make a Luck (-1) check. \n
	If you pass, claim any one monster on the board as a trophy. \n
	If you fail, nothing happens.",

	"You are allowed into the vault of Silver Secrets. \n
	Pass a Luck (-2) check to steal a very unusual item. \n
	Search the Unique Item deck and take any 1 Unique Item you want.",

	"Pay your monthly dues of $3 or lose 2 Sanity from strange dreams \n
	sent to you by Carl Sanford when he kicks you out of the Order. \n
	If you are kicked out, lose your Silver Twilight Membership.",

	"You're invited to take part in a Gating cermony. \n
	If you agree, spend 2 Clue tokens and 1 Sanity to make a Lore (-2) check.\n 
	If you pass, close one gate of your choice. If you fail, nothing happens.",

	"Carl Sanford does not trust you and at the \n
	climax of the monthly ceremony spits a spell at you. \n
	Pass a Luck (-2) check or you are CURSED.",

	"You attend a ceremony in which the order opens a \n
	gate and a monster bursts out of it before the gate closes once more. \n
	A monster appears!"
]

witch = [
	"You find a banquet laid out in the dining room and feel compelled to sit down and eat. \n
	Make a Luck (+0) check and consult the following chart: \n 
	Successes: \n 
	0) You suddenly realize what you've been eating. Lose 3 Sanity. \n 
	1) You gorge yourself, unable to stop eating. Stay here next turn. \n 
	2) The food makes you feel sick. Lose 1 Stamina. \n 
	3+) The meal refreshes you. Gain 3 Stamina.",

	"Pass a Luck (-1) check to find an odd-looking \n
	item in an old dusty display case. Draw 1 Unique Item.",

	"'Excuse me, stranger, but have you ever seen this symbol before?' \n
	A man standing near the house holds up an occult symbol. \n
	Make a Lore (-1) check. If you pass, the man introduces himself as \n
	Thomas F. Malone, a police detective visiting Arkham on a case. \n
	He's impressed with you and offers to join you. Take his Ally card. \n
	If it's not available, he tells you some valuable information instead. \n
	Gain 2 Clue tokens. If you fail, nothing happens.",

	"You feel the house actually breathe and speak your name. \n
	Lose 1 Sanity.",

	"You are overcome by the echoing chants of the \n
	long-gone witches who have lived and died here -- you pass out. \n
	Make a Will (-2) check. If you pass, you learn an ancient spell in your dreams. \n
	Draw 1 Spell. If you fail, you are missing half your items when you wake up. \n
	Discard half of your items (your choice, round down).",

	"A gate and a monster appear!",

	"In an old journal you learn some horrible eldritch secrets. \n
	Roll a die. Lose that much Sanity and gain that many Clue tokens."
]

cave = [
	"You are attacked by a shadowy being, but a large man leaps out of the darkness and drives it off. \n
	He introduces himself as Tom 'Mountain' Murphy. Make a Luck (-2) check, or discard a Whiskey card \n
	to pass it automatically. If you pass, he joins your investigation. Take his Ally card if it's \n
	available, otherwise he gives you something to protect yourself with. \n
	Search the Common Item deck and take the first Weapon you find. If you fail, nothing happens.",

	"You find an old book. If you read it, make a Luck (+0) check and consult the chart below. \n 
	Successes: \n 
	0) Evil forces assault you. Lose 1 Sanity and 1 Stamina. \n 
	1) You find the diary of a lost soul who died in the caves long ago. \n
	   Lose 1 Sanity and gain 1 Clue token as you read his horrible tale. \n 
	2+) The book is a spellbook. Take the first Tome from the Unique Item deck.",

	"You are in a maze of twisty passages, all alike. Pass a Lore (-2) check or become lost. \n
	If you fail, lose 1 Stamina and stay here next turn.",

	"In the darkness you happen upon the remains of a previous spelunker. \n
	Make a Luck (+0) check and consult the chart below: \n 
	Successes: \n 
	0) The body begins to bloat and splits open, releasing the horror within. \n
	   Lose 1 Sanity and a monster appears! \n 
	1) The body has been ripped apart as if shredded by a powerful monster. Lose 1 Sanity. \n 
	2+) Searching the body you find something interesting. Draw 1 Common Item.",

	"Bats! Hundreds of them! Pass a Speed (-1) check to get out of the cave safely. \n
	If you fail, lose 1 Stamina.",

	"A monster appears!",

	"The moaning winds in the cave whisper your name. Lose 1 Sanity."
]

general = [
	"A jar on the counter bears a sign proclaiming, \n
	'Guess how many marbles are in the jar and win a prize! $1 entry fee.' \n
	If you want, you may pay $1 to make a Lore (-2) check. \n
	If you pass, you gain $5. If you fail, nothing happens.",

	"'Hey, you dropped this!' A young street urchin hands you an item and then scampers off. \n
	You don't recognize the item, but the boy is already gone. Draw 1 Common Item.",

	"Make a Will (-2) check. If you pass, you gain the ear of the shopkeeper. \n
	Seeing your valiant cause, he takes you into the back room and offers you some \n
	special equipment. Draw 3 Common Items. You may take 1 of them for free as a gift \n
	to help thwart the evil in Arkham! Discard the other 2. If you fail, nothing happens.",

	"Noticing a glint on the floor, you discover a \n
	silver dollar someone must have dropped. Gain $1.",

	"The shopkeeper notices one of the items you're carrying and his face lights up.\n 
	'Say, I've been looking for one of those. You wouldn't mind parting with it, \n
	yould ya? I can pay well.' You may sell any one of your Common Items for \n
	twice its listed price.",

	"You notice that some of the locals have an odd, fish-like quality to them \n
	that sets your teeth on edge. The shopkeeper notices your gaze and nods, \n
	'Marsh stock, from over in Innsmouth. Watch yourself around them.' \n
	Shivering, you lose 1 Sanity.",

	"You try talking to the elderly locals gathered around the potbellied \n
	stove playing checkers, but you gain nothing but stares and a few befuddled \n
	grunts for your trouble. Apparently they don't like outsiders. No encounter."
]

graveyard = [
	"Entering a stone crypt, you are surprised to find a beautiful fresco and \n
	some inspirational words upon the wall. There is an almost magical \n
	peace within the chamber. Gain 2 Sanity.",

	"You find the half-buried corpse of a strange being. \n
	Draw a monster from the cup and take it as a monster trophy, \n
	even if it has the Endless ability.",

	"Pass a Luck (-2) check to find a valuable clue within your tombstone rubbings. \n
	Gain 2 Clue tokens and you may move to any location or street area in Arkham. \n
	If you move to a location, immediately have an encounter there.",

	"A monster appears!",

	"Descending into a dark mausoleum, you discover a vampire rising to feed. \n
	You quickly find yourself fighting for your life. Make a Combat (-2) check. \n
	If you pass, you defeat the vampire, gaining 1 Clue token and drawing 1 Unique Item. \n
	If you fail, roll a die and lose that much Stamina.",

	"You find a man painting a picture of one of the horrible gargoyles \n
	lining the walls of the graveyard. Seeing you, he introduces himself as \n
	Richard Upton Pickman, a painter visiting from Boston. If you spend monster \n
	trophies that have a total of 5 toughness, Pickman takes a liking to you. \n
	Take his Ally card. If it is not available, he teaches you an incantation instead. Draw 1 Spell.",

	"'Testifying' Cooter Falwell latches onto you and rambles on about his spiritual beliefs. \n
	Make a Lore (-1) check. If you pass, then somewhere in Cooter's words you find a clue \n
	to the Mythos threat. Gain 1 Clue token, but lose 1 Sanity. \n
	If you fail, move to the street while you listen to Cooter ramble on about pure nonsense."
]

hibbs = [
	"Joey 'the Rat' Vigil slips into an empty chair at your table and whispers, \n
	'Psssst! Wanna buy something?' Look at the top 3 cards of the Common Item deck. \n
	You may purchase any or all of them for $1 above list price. \n
	'Hey, I've got overhead!' the Rat explains.",

	"You enter a 'friendly' card game. Make a Luck (-1) check. \n
	If you pass, you win $5. \n
	If you fail, you lose $3. If you lose and can't pay, \n
	the boys rough you up and throw you outside. Lose 1 Stamina and move to the street.",

	"Pass a Luck (-1) check or a pickpocket cleans you out! Lose all of your money.",

	"Prohibition failed to influence the proprietor of Hibb's. \n
	You drink heavily while quizzing the locals about the strange goings-on in Arkham. \n
	Make a Will (-1) check. If you pass, you hold your liquor and learn something. \n
	Gain 2 Clue tokens. If you fail, you pass out. \n
	Move to the street and either have 1 item (your choice) or all of your money stolen.",

	"'So what's your story, friend?' A smiling man inquires about your adventures over \n
	a glass of gin. You tell him your story. If you spend 3 Clue tokens, he introduces \n
	himself as Ryan Dean and asks to join you. Take his Ally card. \n
	If it's not available, he gives you some useful items instead. Draw 2 Common Items.",

	"A stranger buys you a drink. You may search the \n
	Common Item deck for a Whiskey card and take it.",

	"A horrible monster appears!"
]

police = [
	"If you succeed at a Luck (-1) check, then Deputy Dingby \n
	absentmindedly leaves you holding his gun. \n
	You may search the Common Item deck for a .38 Revolver card and take it.",

	"Deputy Dingby, excitedly cleaning his gun, fires a bullet from the chamber in your direction. \n
	Pass a Luck (-1) check to avoid getting shot. If you fail, lose 2 Stamina.",

	"Deputy Dingby accidentally drops a case file as he makes his way past you. \n
	Pass a Sneak (+0) check to search the Common Item deck \n
	for a Research Materials card and take it.",

	"Sheriff Engle trusts you and asks you to step into his office to discuss the \n
	recent strange events. Pass a Luck (-2) check to convince him to take you into \n
	his confidence and give you something to help you out. Draw 1 Unique Item.",

	"One of the men in the holding cells tries to intimidate you with \n
	stories about the things that he's seen. Make a Will (-1) check. \n
	If you pass, gain 1 Clue token. If you fail, move to the street \n
	and lose 1 Sanity as the man laughs at your retreating back.",

	"Pass a Will (-1) check to convince Deputy Dingby to share \n
	some files with you that are very interesting. Gain 2 Clue tokens.",

	"Sheriff Engle notes that you're carrying an awful lot of weapons. \n
	Either pay him $5 or discard all of your Weapons."
]

velma = [
	"You spot a rat leaving the kitchen. \n
	Pass a Will (-2) check to convince Velma to bribe you $5 not to tell anyone.",

	"Velma comments on how skinny you look and gives you a sandwich on the house. \n
	You may search the Common Item deck for a Food card and take it.",

	"You find some money on the floor under the back booth. \n
	If you take it, make a Sneak (-1) check. \n
	If you pass, roll a die and gain that much money. \n
	If you fail, Velma sees you pick up the money. \n
	She comes over and swipes it out of your hands screaming \n
	'Stealing my tips!' so loudly that you flee the diner. Move to the streets.",

	"You get food poisoning! Pass a Luck (-1) check or lose 2 Stamina.",

	"'What'll it be, hon?' Velma takes your order. Pay up to $6 to gain \n
	that many points split between Sanity and Stamina however you like.",

	"'This must be where pies go when they die.' If you want, \n
	pay $1 to enjoy a fine slice of cherry pie. If you do, gain 2 Stamina.",

	"Velma reads the tea leaves left in your cup. Make a Luck (-1) check. \n
	If you pass, the formation of the leaves indicates hope, you are BLESSED. \n
	If you fail, the future looks bleak, you are CURSED."
]

historical = [
	"Perusing the county records, you discover something \n
	horrifying about your family tree. Lose 1 Sanity.",

	"Pass a Luck (-1) [2] check to gain insight into a skill while \n
	studying the old volumes of books. Draw 1 Skill, but stay here next turn.",

	"The Society members are bird watching in the woods. The janitor offers you a \n
	ride there. If you accept, move to the Woods and draw 2 cards, \n
	encountering one card of your choice and discarding the other.",

	"You meet Cindy Fleming, a young geology professor at the University. \n
	She offers to show you some interesting formations at the Black Cave. \n
	If you accept, move to the Black Cave and draw 2 cards, \n
	encountering one card of your choice and discarding the other.",

	"You encounter a friendly old professor from Miskatonic University. \n
	If you spend 1 gate trophy, he introduces himself as Professor Armitage and offers \n
	to join forces with you. Take his Ally card if it is available, otherwise draw 1 Unique Item.",

	"Pay a $3 fee to gain access to the private library. If you refuse, move to the street. \n
	If you pay, make a Luck (-1) check. If you pass, you learn an ancient spell from a dusty ledger. \n
	Draw 1 Spell. If you fail, you doze off and enter The Dreamlands. \n
	Have one encounter there, then immediately return here.",

	"You notice a creepy man watching you as you peruse the books. \n
	With a feeling of dread you try to slip out without being followed. \n 
	Make a Sneak (-1) check. If you pass, you lose the man, gaining 1 Sanity in the process. \n
	If you fail, you are accosted by the man in the street. He is a wizard and he casts a dark \n
	spell on you as you flee. Lose 2 Stamina, move to the street, and you are CURSED."
]

boarding = [
	"The last guest to stay in your room had to leave in a hurry \n
	and left something behind. Draw 1 Common Item.",

	"After supper while sitting on the porch you strike up a conversation \n
	with another guest: Ryan Dean, a traveling salesman. \n
	You may make a Will (+0) check if you want. If you pass, Ryan has a deal for you. \n 
	You may draw either 1 Common or 1 Unique Item and purchase it at list price. \n
	If you fail, stay here next turn listening to bawdy stories and tall tales.",

	"Staring at a painting in one of the rooms, you find yourself drawn into it. \n
	Make a Luck (+0) check. If you pass, move to The Dreamlands. \n
	Have one encounter there and immediately return here. \n
	If you fail, move to the Abyss. Have one encounter there and immediately return here.",

	"Ma Mathison tells you that the best room in the house is available for the night. \n
	If you want, pay $3 to spend the night there. \n
	Gain 4 points split between Sanity and Stamina however you choose.",

	"Chanting neighbors keep you up all night. \n
	Pass a Luck (-1) check or lose your choice of 1 Stamina or 1 Sanity.",

	"You find a poorly boarded-up passage in the basement that opens into a winding tunnel. \n
	If you venture into it, you exit in the Silver Twilight Lodge. \n
	Draw 2 cards and encounter one card of your choice, discarding the other.",

	"Ma Mathison serves her special soup at supper. \n
	Roll a die and gain that much Stamina."
]

church = [
	"You enter the confessional. 'Bless me, Father, for I have sinned.' \n
	Make a Luck (+0) check and consult the chart below: \n 
	Successes: \n 
	0) 'Father? Are you there?' You hear a scream in the next compartment! \n
	    Lose 3 Sanity and move to the street. \n 
	1)'Father?' There is no answer. Sighing, you leave. Move to the street. \n 
	2+) 'I don't remember my last confession.' Raise your Sanity to its maximum value.",

	"Noticing you eying the holy water, Father Michael tells you, 'Take what you need, my child.' \n
	You may search the Unique Item deck for a Holy Water card and take it.",

	"You could swear the drain pipe gargoyle moved. Lose 1 Sanity.",

	"Upon entering the church, you are attacked by Father Michael with a giant cross, \n
	who for some reason believes you to be in the league with the devil. \n
	Make a Speed (-1) check. If you pass, you escape. \n
	If you fail, lose 2 Stamina. In either case, move to the street.",

	"You join in the morning mass. Spend 1 Clue token to ask for heavenly aid. \n
	If you do so, roll a die. On a success, your prayers are answered. \n
		Remove 1 doom token from the Ancient One's doom track.",

	"Knowing that you are engaged in God's work, Father Michael BLESSES you.",

	"Father Michael convinces you that there are members of his congregation \n
	in greater need than you. Donate either half your money (rounded up) \n
	or half your items (your choice, rounded up) to the poor."
]

asylum = [
	"In the Doctor's study, you find a book of helpful notes gathered from inmate interviews. \n
	Make a Lore (+0) check and consult the following chart: \n 
	Successes: \n 
	0) Their stories fill you with horror even as you learn a few bits of knowledge. \n
	   Lose 1 Sanity and gain 1 Clue token. \n 
	1-2) You find several pieces of useful information. Gain 2 Clue tokens. \n 
	3+) One of the interviews contains vital information. Gain 3 Clue tokens.",

	"The guards of the sanitarium are aware that there is an intruder. \n
	Make a Sneak (-1) check to escape. If you pass, move to the street. \n
	If you fail, you are arrested and taken to the Police Station.",

	"You find some strange medicine labeled 'Dream Enhancers' in a dusty cabinet. \n
	If you choose to take it, make a Lore (-1) check. If you pass, your visions \n
	show you how to perform a ritual. Draw 1 Spell. Otherwise, nothing happens.",

	"Nurse Heather accidentally injects you with a sleeping draught. \n
	You may make a Fight (-2) check to resist. \n
	If you fail or choose not to resist, lose your next turn and gain 2 Sanity \n
	from the prolonged rest. If you pass, nothing happens.",

	"Nurse Heather is coming! Make a Speed (-1) check to hide in time. \n
	If you pass, you see her drop something as she walks by. Draw 1 Unique Item. \n 
	If you fail, she throws you out. Move to the street.",

	"You are mistaken for an inmate. Doctor Mintz has the guards subdue you and \n
	conducts an experiment. Make a Will (-1) [2] check to discover the results. \n
	If you pass, the injections seem to increase your capacity for learning. Draw 1 Skill. \n 
	If you fail, his memory drug fails miserably, resulting in lost knowledge. \n
	Your must discard one of the following (your choice), \n
	if able: 4 Clue tokens, or 2 Spells, or 1 Skill.",

	"You hear screaming. When you open a heavy cell door to investigate, \n
	a dark shape leaps out at you! It's an insane man in a straightjacket \n
	babbling about invisible horrors. Make a Lore (-2) check to glean some \n
	useful information from him. If you pass, gain 2 Clue tokens. \n
	If you fail, lose 1 Stamina as he attacks you."
]

bank = [
	"One of the other customers in the bank recognizes you and offers you a lift. \n
	Move to any location or street area in Arkham. \n
	If you move to a location, immediately have an encounter there.",

	"'This is a stick-up, see? Nobody move!' \n
	Three men armed with tommy guns rob the bank while you're standing in line. \n
	Make a Combat (-1) check. If you pass, you drive them off. \n
	Nothing happens. If you fail, lose all of your money.",

	"You find a penny with a strange sigil carved into it. Amused, you flip it in \n
	the air, then gasp as you feel the sudden gathering of magical forces around \n
	you. Make a Luck (-2) check. If you pass, the penny comes up heads. \n
	You are BLESSED. If you fail, it comes up tails. You are CURSED.",

	"A teller you've never seen before insists she just saw you come in \n
	and make a deposit the day before. She proves it by showing you \n
	your signature. Gain $5, but lose 1 Sanity.",

	"A man wearing dirty and tattered clothing is loitering outside the bank. \n
	He offers to sell you his last possession to get some food money for him \n
	and his family. If you accept, pay $2 and make a Luck (-1) check. \n
	If you pass, draw 1 Unique Item. If you fail, draw 1 Common Item.",

	"You see a richly dressed man making a large withdrawal. On the way out, \n
	he lights his cigar with a piece of green paper which he drops to the ground. \n
	Pass a Speed (-1) check to stub it out with your toe before it burns up. \n
	You discover it to be a slightly singed two dollar bill. Gain $2.",

	"A little old lady stands in front of you in line counting out a \n
	bag of pennies to deposit. Lose 1 Sanity."
]

independence = [
	"A pair of friendly picnickers share their lunch with you. Gain 1 Stamina",

	"A shadow falls across you from no apparent source and you shiver with more \n
	than just cold. Pass a Will (-1) check or lose 1 Stamina and 1 Sanity.",

	"There are gypsies camped in the park. They are master thieves and you \n
	are their target. Pass a Luck (-2) check or lose 1 item of your choice.",

	"You touch Founder's Rock. Make a Luck (-1) check. If you pass, there is \n
	an electrifying shock that opens your mind to the elder things of eons past. \n
	Lose 1 Stamina, but gain 2 Clue tokens and draw 1 Spell. If you fail, you find \n
	a strange carving. As you finger the grooves, a gate opens here and you are \n
	drawn through it.",

	"Make a Will (-1) check. If you pass it, Anna Kaslow the fortune teller \n
	offers her help in your investigation. Take her Ally card if it is still \n
	available. Otherwise, gain 2 Clue tokens. If you fail, nothing happens.",

	"Pass a Fight (-1) check to intimidate a policeman or \n
	he rousts you from the park. Move to the street.",

	"There are gypsies camped in the park. Make a Luck (-1) check if you wish \n
	to interact with them. If you pass, an old man has spread several items on \n
	a blanket for sale. Draw 1 Unique Item and you may buy it for $1 less than \n
	the list price. If you fail, a hag comes up to you and tells you that death \n
	shadows you. You scoff at her and she cuts the side of your face with her \n
	fingernail, drawing blood. Lose 1 Stamina and become CURSED."
]