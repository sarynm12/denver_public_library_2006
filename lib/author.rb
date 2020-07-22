class Author
  attr_reader :first_name, :last_name

  def initialize(info)
    @first_name = info[:first_name]
    @last_name = info[:last_name]
  end

  def name
    @first_name + " " + @last_name
  end

end
