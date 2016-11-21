#write your code here
def ftoc ftemp
	return ((ftemp - 32.0) / 1.8).ceil
end

def ctof ctemp
	return (ctemp * 1.8) + 32.0
end