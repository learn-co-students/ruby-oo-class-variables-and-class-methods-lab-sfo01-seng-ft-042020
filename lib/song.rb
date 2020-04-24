require 'pry'
class Song
  attr_accessor :name, :artist, :genre
  @@count = 0
  @@artists = []
  @@genres = []
  def initialize(name, artist, genre)
    @name = name
    @genre = genre
    @artist = artist
    @@count += 1
    @@genres << self.genre
    @@artists << self.artist
  end

  def self.count
    @@count
  end

  def self.genres
    @@genres.uniq
  end

  def self.artists
    @@artists.uniq
  end
  
  def self.genre_count
    group_genre = @@genres.group_by{|value| value}
    value_to_int= group_genre.map{|genre,amount|[genre,amount.length]}
    genre_count = Hash[value_to_int]
  end
  
  def self.artist_count
    group_artists = @@artists.group_by {|value| value}
    value_to_int = group_artists.map{|artist, amount| [artist, amount.length]}
    artist_count = Hash[value_to_int]
  end
end
  
  
  
  