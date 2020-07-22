require 'minitest/autorun'
require 'minitest/pride'
require './lib/book'
require './lib/author'

class AuthorTest < Minitest::Test

  def test_it_exists
    charlotte_bronte = Author.new({first_name: "Charlotte", last_name: "Bronte"})
    assert_instance_of Author, charlotte_bronte
  end

  def test_it_has_a_name
    charlotte_bronte = Author.new({first_name: "Charlotte", last_name: "Bronte"})
    assert_equal "Charlotte Bronte", charlotte_bronte.name
  end

  def test_it_starts_with_no_books
    charlotte_bronte = Author.new({first_name: "Charlotte", last_name: "Bronte"})
    assert_equal [], charlotte_bronte.books
  end

  def test_it_can_write_books
    charlotte_bronte = Author.new({first_name: "Charlotte", last_name: "Bronte"})
    jane_eyre = charlotte_bronte.write("Jane Eyre", "October 16, 1847")
    assert_equal Book, jane_eyre.class
    assert_equal "Jane Eyre", jane_eyre.title
  end

  def test_written_books_get_added_to_books
    charlotte_bronte = Author.new({first_name: "Charlotte", last_name: "Bronte"})
    jane_eyre = charlotte_bronte.write("Jane Eyre", "October 16, 1847")
    assert_equal [jane_eyre], charlotte_bronte.books
    villette = charlotte_bronte.write("Villette", "1853")
    assert_equal [jane_eyre, villette], charlotte_bronte.books 
  end

end

# ## Iteration 2
#
# Use TDD to create an `Author` class that responds to the following interaction pattern.
#
# The `write` method must take two Strings as arguments and return an instance of `Book`.

# #=> #<Book:0x00007fb896e22538...>
#
# pry(main)> jane_eyre.class
# #=> Book
#
# pry(main)> jane_eyre.title
# #=> "Jane Eyre"
#
#
# pry(main)> charlotte_bronte.books
# #=> [#<Book:0x00007fb896e22538...>, #<Book:0x00007fb8980aaca0...>]
# ```
