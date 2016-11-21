#write your code here
def translate_word word
	vowels = ['a', 'e', 'i', 'o', 'u']
	if vowels.include? word[0].downcase
		return word + "ay"
	else
		first = ''
		rest = ''
		vowelfound = false
		word.split("").each do |char|
			if vowels.include? char.downcase
				vowelfound = true
				if char == 'u' && first[first.length-1] == 'q'
					vowelfound = false
				end
			end
			
			if vowelfound
				rest += char
			else 
				first += char
			end
		end
		return rest + first + "ay"
	end
end

def translate phrase
	splits = phrase.split(" ")

	if splits.length == 1
		return translate_word phrase
	end

	for i in 0...splits.length
		splits[i] = translate_word splits[i]
	end
	return splits.join(" ")
end
	

