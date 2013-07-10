module InWords 

  def in_words
    final = ""
    if self == 0
      final << "zero"
    end

    remaining = self
    i = 0
    
    one_to_nineteen = ["", "one ", "two ", "three ", "four ", "five ", "six ", "seven ", "eight ", "nine ", "ten ", "eleven ", "twelve ", "thirteen ", "fourteen ", "fifteen ", "sixteen ", "seventeen ", "eighteen ", "nineteen "]
    tensblock = ["", "", "twenty ", "thirty ", "forty ", "fifty ", "sixty ", "seventy ", "eighty ", "ninety "]
    magnitude = ["", "thousand ", "million ", "billion ", "trillion ", "quadrillion ", "quintillion "]

    while remaining > 0 do
      current = remaining.divmod(1000).pop
      remaining = remaining.divmod(1000).shift
      output = ""

      if current >= 100
        hundreds = current.divmod(100).shift
        output << one_to_nineteen[hundreds]
        output << "hundred "
      end

      tens = current.divmod(100).pop

      if tens < 20
        output << one_to_nineteen[tens]
      else
        output << tensblock[tens.divmod(10).shift]
        output << one_to_nineteen[tens.divmod(10).pop]
      end

        if current > 0
      output << magnitude[i]
        end
      i += 1
      
      final = output + final
    end

    final.rstrip
  end

end #end Module

class Fixnum
  include InWords
end
