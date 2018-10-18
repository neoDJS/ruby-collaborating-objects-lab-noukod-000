class MP3Importer
  attr_accessor :path, :files
  def initialize(name="")
    self.path = name
    @files = []
    self.loads
  end

  def loads
    Dir.foreach(self.path) do |fichier|
      if fichier.end_with?(".mp3")
        @files << fichier
      end
    end
  end

  def import
    self.files.each do |fichier|
      if fichier.end_with?(".mp3")
        Song.new_by_filename(fichier)
      end
    end
  end
end
