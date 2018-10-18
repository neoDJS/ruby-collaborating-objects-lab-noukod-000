class Artist
  @@all = []
  attr_accessor :name, :songs
  def initialize(name="")
    self.name = name
    @songs = []
    self.save
  end

  def save
    @@all << self
  end

  def self.create(name="")
    new_a = self.new(name)
    new_a.save
    new_a
  end

  def self.all
    @@all
  end

  def add_song(song="")
    new_s = song
    new_s.artist = self
    self.songs << new_s
  end

  def self.find_or_create_by_name(name="")
    new_a = Artist.all.find do |a| a.name == name end
    new_a.nil? ? Artist.new(name) : new_a
  end

  def print_songs
    self.songs.each do |s| puts s.name end
  end
end
