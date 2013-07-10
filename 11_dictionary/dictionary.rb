class Dictionary

  def entries
    @entries ||= {}
  end

  
  def add new_entry
    case new_entry
      when Hash
        entries.merge!(new_entry)
      when String
        entries[new_entry] = nil
    end
  end

 def keywords
    @entries.keys
  end

  def include? w
    entries.keys.include? w
  end

  def find w
    unless @entries[w] == {}
    @entries[w]
    else
      {}
    end
  end

=begin
# Why doesn't this work? *
  
  def add(new_word)
    if new_word.is_a? Hash
  	 entries.merge!(new_word)
    elsif new_word.is_a? String
      @entries[new_word] = nil  
    end
  end

def entries
    unless @entries
      @entries = {}
    end
  end

=end


end