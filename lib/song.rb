require'pry'

class Song
  attr_accessor :name, :artist_name
  
  @@all = []
  
  def self.create
    song = self.new
    song.save
    song
  end 
  
  def self.new_by_name(song_name)
    song = self.new
    song.name = song_name
    song
  end 
  
  def self.create_by_name(song_name)
    song = self.new
    song.name = song_name
    song.save
    song
  end 
  
  def self.find_by_name(name)
    self.all.find{|song| song.name == name}
  end
  
  def self.find_or_create_by_name(song_name)
    self.find_by_name(song_name) || self.create_by_name(song_name) 
  end
  
  def self.alphabetical
    self.all.sort_by { |song| song.name }
  end 
  
  def self.new_from_filename(mp3)
   name_and_artist = mp3.split(" - ")
   artist_name = name_and_artist[0]
   name = name_and_artist[1]
   name.chomp(".mp3")
   binding.pry
  end 
  
  def self.create_from_filename
  end 

  def self.all
    @@all
  end

  def save
    self.class.all << self
  end

end

#build class constructor "new_from_filename" - accepts filename in format of "-.mp3" 
#constructor should return a new song instance with only relevant components (song name and artist name)
#separate the artist name from the rest of the data based on the - delimiter
#parse song name and remove '.mp3'

#build class constructor "create_from_filename" - accepts a file name in the format of "-.mp3" 
#parse filename corrects and save song instance created 

#build class method "destroy_all" - should reset the state of @@all class variable to an empty Array
#delete all previous song instances 





