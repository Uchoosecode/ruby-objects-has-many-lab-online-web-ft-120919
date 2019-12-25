

class Artist 
  
attr_accessor :name

  def initialize(name= "Beyonce")
    @name = name
    @songs = []
  end
  
  def songs
    Song.all.select {|song| song.artist == self}
  end
  
  def add_song(song)
    @songs << song
    song.artist = self
  end
  
  def add_song_by_name(song)
    song = Song.new(name)
    @songs << add_song(song)
    song.artisrt.add_song
  end
  
end


