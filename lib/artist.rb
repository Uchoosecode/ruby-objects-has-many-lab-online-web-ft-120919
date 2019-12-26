require 'pry'

class Artist 
  
attr_accessor :name 

  @@all = 0 

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
    song = Song.new(song)
    @songs << song
    song.artist = self
  end
  
  def self.song_count
   Song.all.count 
  end
  
  
end


