require 'minitest/autorun'
require 'minitest/pride'
require './lib/book'
require './lib/author'
require './lib/library'

class LibraryTest < Minitest::Test

  def test_it_exists
    dpl = Library.new("Denver Public Library")
    assert_instance_of Library, dpl
  end

end

# ## Iteration 3
#
# Use TDD to create a `Library` class that responds to the following interaction pattern.
#
# The `publication_time_frame_for` method takes an `Author` object as an argument and returns a hash with two key/value pairs:
#   * `:start` which points to the publication year of the `Author`'s first book.
#   * `:end` which points to the publication year of the `Author`'s last book.
#
# ```ruby
# pry(main)> require './lib/library'
# #=> true
#
# pry(main)> require './lib/author'
# #=> true
#
# #=> #<Library:0x00007fbeea3653c0...>
#
# pry(main)> dpl.name
# #=> "Denver Public Library"
#
# pry(main)> dpl.books
# #=> []
#
# pry(main)> dpl.authors
# #=> []
#
# pry(main)> charlotte_bronte = Author.new({first_name: "Charlotte", last_name: "Bronte"})
# #=> #<Author:0x00007fbeea2d78b8...>
#
# pry(main)> charlotte_bronte.write("Jane Eyre", "October 16, 1847")
# #=> #<Book:0x00007fbeeb3beca8...>
#
# pry(main)> professor = charlotte_bronte.write("The Professor", "1857")
# #=> #<Book:0x00007fbeea8efd90...>
#
# pry(main)> villette = charlotte_bronte.write("Villette", "1853")
# #=> #<Book:0x00007fbeea24fbe8...>
#
# pry(main)> harper_lee = Author.new({first_name: "Harper", last_name: "Lee"})
# #=> #<Author:0x00007fbeea112730...>
#
# pry(main)> mockingbird = harper_lee.write("To Kill a Mockingbird", "July 11, 1960")
# #=> #<Book:0x00007fbeeb1089f0...>
#
# pry(main)> dpl.add_author(charlotte_bronte)
#
# pry(main)> dpl.add_author(harper_lee)
#
# pry(main)> dpl.authors
# => [#<Author:0x00007fbeea2d78b8...>, #<Author:0x00007fbeea112730...>]
#
# pry(main)> dpl.books
# => [#<Book:0x00007fbeeb3beca8...>, #<Book:0x00007fbeea8efd90...>, #<Book:0x00007fbeea24fbe8...>, #<Book:0x00007fbeeb1089f0...>]
#
# pry(main)> dpl.publication_time_frame_for(charlotte_bronte)
# #=> {:start=>"1847", :end=>"1857"}
#
# pry(main)> dpl.publication_time_frame_for(harper_lee)
# #=> {:start=>"1960", :end=>"1960"}
# ```
