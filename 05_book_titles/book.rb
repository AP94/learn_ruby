class Book
# write your code here
	attr_reader :title

	def title=(new_title)
		@title = capTitle(new_title)
	end

	def capTitle title
		splits = title.split(" ")
		if splits.length == 1
			puts title.capitalize
			return title.capitalize
		else 
			splits[0].capitalize!
			splits[splits.length-1].capitalize!
			nocaps = ["and", "but", "or", "a", "an", "the", "for", "nor", "yet", "so", "on", "at", "to", "from", "by", "with", "into", "on", "of", "off", "over", "under", "in"]
			for i in 1...splits.length-1
				if !nocaps.include? splits[i]
					splits[i].capitalize!
				end
			end
		end
		return splits.join(" ")
	end

end
