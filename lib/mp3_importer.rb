class MP3Importer 
   attr_accessor :path 
   
  def initialize(path)
    @path = path
  end 
  
  def files
    Dir[@path+"/*.mp3"].map do |file| 
      binding.pry
      file.split("/").last 
    end 
  end


  def import
    files.each{|file| Song.new_by_filename(file)}
  end
end 