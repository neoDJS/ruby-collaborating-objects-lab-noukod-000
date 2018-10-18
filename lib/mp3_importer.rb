class MP3Importer
  attr_accessor :path, :files
  def initialize(name="")
    self.path = name
    @files = []
  end

  def import
    Dir.foreach(chemin_physique_du_repertoire) do |fichier|
      if fichier.end_with?(".mp3")
        self.files = fichier
        Song.new_by_filename(fichier)
      end
    end
  end
end
