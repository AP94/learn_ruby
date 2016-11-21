class Timer
  #write your code here
  attr_reader :seconds, :minutes, :hours

  def initialize
  	@seconds = 0
  	@minutes = 0
  	@hours = 0
  end

  def seconds=(sec)
  	while sec > 3600
  		@hours += 1
  		sec -= 3600
  	end

  	while sec > 60
  		@minutes += 1
  		sec -= 60
  	end
  	@seconds = sec
  end

  def time_string
  	h = @hours.to_s
  	if h.length < 2
  		h = '0' + h
  	end
  	m = @minutes.to_s
  	if m.length < 2
  		m = '0' + m
  	end
  	s = @seconds.to_s
  	if s.length < 2
  		s = '0' + s
  	end

  	return h + ":" + m + ":" + s
  end

end
