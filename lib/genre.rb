class Genre
  
  attr_accessor :name
  
  @@all = []
  
  def self.all
    @@all
  end
  
  def initialize(name)
    @name = name
    @@all << self
  end
  
  def songs
    Song.all { |song| song.genre == self }
  end
  
  def artists
    Artist.all { |artist| artist.name == self}
  end
  
end