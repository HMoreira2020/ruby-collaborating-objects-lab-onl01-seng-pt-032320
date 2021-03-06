class Song 
  attr_accessor :name, :artist   
  
  @@all = [] 
  
  def initialize(name)
    @name = name 
    @@all << self 
  end 
  
  def self.all 
    @@all 
  end 
  
  def self.new_by_filename(filename)
    song_name = filename.split(" - ")[1] 
    artist_name = filename.split(" - ")[0] 
    song = Song.new(song_name) 
    song.name = song_name 
    song.artist_name = artist_name 
    song 
  end 
  
  def artist_name=(artist_name_string)
    artist = Artist.find_or_create_by_name(artist_name_string)
    self.artist = artist 
    artist.add_song(self) 
  end 
  
  
end 