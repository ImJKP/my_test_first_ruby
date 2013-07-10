def echo(s)
  s
end

def shout(s)
  s.upcase
end

def repeat(s, n=0)
  if n==0
    "#{s} " + s
  else
    "#{s} " * (n-1) + s
  end
end

def start_of_word(s,n)
  s[0...n]
end

def first_word(s)
  s.split(" ").first
end

def titleize(s)
  words = s.downcase.split(" ")
  words.each do |w|
    unless ["and","over","the"].include? w
      w.capitalize!
      else
      w
    end
  end
  words.first.capitalize!
  words.join(" ")
end
