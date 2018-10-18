class MP3Importer
  attr_accessor :path, :files
  def initialize(name="")
    self.path = name
    @files = []
    self.loads
  end

  def loads
    Dir.foreach(self.path) do |fichier|
      self.files << fichier
    end
  end

  def import
    if fichier.end_with?(".mp3")
      Song.new_by_filename(fichier)
    end
  end
end
