rand = (h,l)->
	Math.floor Math.random() * (l - h + 1)

# Parameters
# len  	:   Number of word default(6)
random_word = (len = 6) ->
	consonants = ["b","c","d","f","g","h","j","k","l","m","n","p","r","s","t","v","w","x","y","z"]
	vocal = ["a","e","i","o","u"]
	max = len / 2
	word = ""

	[1..max].map () ->
		word += consonants[rand(0,19)]
		word += vocal[rand(0,4)]

	word

exports.random_word = random_word

# Parameters
# word_count  	:   Number of sentence
# l 			:   Small word possibility default(3)
# h				: 	Large word possibility default(12)
random_sentence = (word_count = 1, l = 3, h = 12) ->
	sentences = ""
	[1..word_count].map (i) ->
		sentences += random_word(rand(l,h))
		if i isnt word_count
			sentences += " "
		else
			sentences += "."
	
	sentences

exports.random_sentence = random_sentence


# Parameters
# sentence_number  	:   Number of paragraph default(3)
random_paragraph = (sentence_number = 3) ->
	paragraph = ""
	[1..sentence_number].map (i) ->
		paragraph += random_sentence(sentence_number)
		if i isnt sentence_number
			paragraph += " "
	
	paragraph

exports.random_paragraph = random_paragraph