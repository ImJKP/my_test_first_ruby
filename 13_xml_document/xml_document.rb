=begin
  In the interests of honesty, I'll admit this exercise stumped me; I mostly
  walked through the solution provided by ultrasaurus figuring out how it
  worked. I'm working my way through RubyMonk's method_missing drill, and will
  be reading up on XML structure!
=end

class XmlDocument
  def initialize(indent = false)
    @indent = indent
    @indent_level = 0
  end

  def method_missing(method_name, *args, &block)
    attributes = args[0] || {}
    xml_doc = ""
    xml_doc << ("  " * @indent_level) if @indent
    xml_doc << "<#{method_name}"
    attributes.each do |key, value|
      xml_doc << " #{key}='#{value}'"
    end
    if block
      xml_doc << ">"
      xml_doc << "\n" if @indent
      @indent_level += 1
      xml_doc << yield
      @indent_level -= 1
      xml_doc << ("  " * @indent_level) if @indent
      xml_doc << "</#{method_name}>"
      xml_doc << "\n" if @indent
    else
      xml_doc << "/>"
      xml_doc << "\n" if @indent
    end
    xml_doc
  end

end