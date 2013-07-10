def translate(s)
  words = s.split(" ")
  translation = []
  words.each do |w|
    v = w =~ /[aeiou]/ #Where is the furst vowel?
    if v == 0 #Starts with Vowel rules
      w = w + "ay"
    else # Starts with consonant
      if w[v] == "u" && w[v-1] == "q" # Q rules
        w = w[v+1..-1] + w[0..v] + "ay"
      else #Not Q
        w = w[v..-1] + w[0..v-1] + "ay"
      end
    end
    translation << w
  end
  return translation.join(" ")
end
