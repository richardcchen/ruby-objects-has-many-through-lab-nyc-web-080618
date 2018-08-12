class Genre

  attr_accessor :name
  attr_reader

  @@all = []

  def initialize(name)
      @name = name
      @@all << self

  end

  def self.all
    @@all
  end

  def new_song(name, artist)
    new = Song.new(name, artist, self)
    new.genre = self
  end

  def songs
    Song.all.select do |song_instances|
      song_instances.genre == self
    end
  end

  def artists
    Song.all.map do |song_instance|
        if song_instance.genre == self
          song_instance.artist
        end
    end
  end

end #end of class
