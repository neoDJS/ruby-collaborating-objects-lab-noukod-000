class Song
  @@all = []
  attr_accessor :name, :artist
  def initialize(title="")
    self.name = title
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

  def self.new_by_filename(filename="")
    tab = filename.split(" - ")
    new_s = Song.new(tab[1])
    new_s.artist = Artist.new(tab[0])
    new_s.artist.add_song(new_s)
    new_s
  end
end
