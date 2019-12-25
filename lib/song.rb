

class Song
  attr_accessor :artist, :name, :genre
 
  @@all = []
 
  def initialize(name)
    @name = name
    @genre = genre
    save
  end
 
  def save
    @@all << self
  end
 
  def self.all
    @@all
  end
  
  # def artist(name)
  #   artist = Artist.new(name)
  # end
  
  def artist_name
    self.artist.name
  end
end