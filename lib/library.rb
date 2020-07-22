class Library
  attr_reader :name, :books, :authors

  def initialize(name)
    @name = name
    @authors = []
  end

  def books
    @authors.map do |author|
      author.books
    end  
  end

  def add_author(author)
    @authors << author
  end

end
