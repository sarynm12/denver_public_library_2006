class Library
  attr_reader :name, :books, :authors, :checked_out_books

  def initialize(name)
    @name = name
    @authors = []
    @checked_out_books = []
  end

  def books
    @authors.flat_map do |author|
      author.books
    end
  end

  def add_author(author)
    @authors << author
  end

  def publication_time_frame_for(author)
    result = {:start => author.books[0].publication_year,
              :end => author.books[1].publication_year}
    # elsif books.count < 1
    #   result = {:start => author.books[0].publication_year,
    #           :end => author.books[0].publication_year}
    # end
  end

  def checkout(book)
    if self.books.include?(book)
      true
    else
      false
    end
  end


end
