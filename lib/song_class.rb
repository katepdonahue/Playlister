
class Song
  attr_accessor :name, :artist
  attr_reader :genre

  def initialize
    @name = ""
    @artist = ""
    @genre = ""
  end

  def genre=(new_genre)
    @genre = new_genre
    new_genre ||= Genre.new .tap{|g| g.name = new_genre}
    new_genre.songs << self
  end

end