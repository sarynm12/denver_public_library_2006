class Author
  attr_reader :first_name, :last_name, :books

  def initialize(info)
    @first_name = info[:first_name]
    @last_name = info[:last_name]
    @books = []
  end

  def name
    @first_name + " " + @last_name
  end

  def write(title, publication_date)
    new_book = Book.new({author_first_name: "Charlotte", author_last_name: "Bronte", title: title, publication_date: publication_date})
    @books << new_book
    new_book 
  end

end
