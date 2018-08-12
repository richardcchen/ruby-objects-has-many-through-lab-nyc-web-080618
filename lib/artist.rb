require "pry"

class Artist

  attr_accessor :name, :songs, :artist
  attr_reader

  @@all = []

  def initialize(name)
    @name = name
    @@all << self
  end

  def self.all
    @@all
  end

  def new_song(songname, genre)
    new = Song.new(songname, self, genre)
    #binding.pry
    #new.artist = self
  end

  def songs
    Song.all.select do |song_instance|
      song_instance.artist == self
    end
  end

  def genres
    Song.all.map do |song_instance|
      if song_instance.artist == self
        song_instance.genre
      end
    end
  end


end #end of class
