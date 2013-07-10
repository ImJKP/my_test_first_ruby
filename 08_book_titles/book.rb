class Book

  attr_reader :title

  def title=(input)
    new_title=[]
    words = input.split(' ')
    words[0].capitalize!
    words.each do |w|
      unless ['a','an','and','in','the','of'].include? w
        w.capitalize!
      end
      new_title << w
    end

    @title = new_title.join(' ')
  end

end
