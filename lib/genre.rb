require 'pry'
class Genre
attr_accessor :name 
@@all = []

  def initialize(name)
    @name = name
    @@all << self
  end

  def self.all
    @@all
  end

  def songs
    Song.all { |song| song.genre == self}
  end

  def artists
    self.songs.map do |song|
      song.artist
    end
  end

end
