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

end

# ## Iteration 2
#
# Use TDD to create an `Author` class that responds to the following interaction pattern.
#
# The `write` method must take two Strings as arguments and return an instance of `Book`.
#
# ```ruby
# pry(main)> require './lib/book'
# #=> true
#
# pry(main)> require './lib/author'
# #=> true
#
# #=> #<Author:0x00007fb898081850...>
#
# pry(main)> charlotte_bronte.name
# #=> "Charlotte Bronte"
#
# pry(main)> charlotte_bronte.books
# #=> []
#
# pry(main)> jane_eyre = charlotte_bronte.write("Jane Eyre", "October 16, 1847")
# #=> #<Book:0x00007fb896e22538...>
#
# pry(main)> jane_eyre.class
# #=> Book
#
# pry(main)> jane_eyre.title
# #=> "Jane Eyre"
#
# pry(main)> charlotte_bronte.write("Villette", "1853")
# #=> #<Book:0x00007fb8980aaca0...>
#
# pry(main)> charlotte_bronte.books
# #=> [#<Book:0x00007fb896e22538...>, #<Book:0x00007fb8980aaca0...>]
# ```
