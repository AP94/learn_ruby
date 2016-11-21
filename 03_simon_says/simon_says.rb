#write your code here
def echo phrase
	return phrase
end

def shout phrase
	return phrase.upcase
end

def repeat phrase, reps=2
	output = phrase
	(reps-1).times do
		output += " " + phrase
	end
	return output
end

def start_of_word word, len
	return word[0, len]
end

def first_word phrase
	return phrase.split(" ")[0]
end

def titleize phrase
	if (phrase.split(" ") == phrase)
		return phrase.capitalize
	end

	splits = phrase.split(" ")
	splits[0].capitalize!
	splits[splits.length-1].capitalize!
	smalls = ['a', 'an', 'the', 'for', 'and', 'nor', 'but', 'or', 'yet', 'so', 'at', 'around', 'by', 'after', 'along', 'for', 'from', 'of', 'on', 'to', 'with', 'without', 'over', 'under']
	for word in splits[1, splits.length-1]
		if !(smalls.include? word)
			word.capitalize!
		end
	end

	return splits.join(" ")
end