class Artist
  attr_accessor :name
  attr_reader :songs
  
  @@all = []

  def initialize(name)
    @name = name
    @songs = []
    @@all << self
  end
  
  def self.all
    @@all
  end
  
  def add_song(song)
    @songs << song
  end
  
  def self.find_or_create_by_name(name)
    s = @@all.find {|i| i.name == name}
    s ? s : Artist.new(name)
  end
  
  def print_songs
    @songs.each do |i|
      puts i.name
    end
  end
end