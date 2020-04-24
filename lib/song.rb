require 'pry'

class Song
    attr_accessor :name, :artist, :genre 
    @@count = 0
    @@artists = []
    @@genres = []
    def initialize(name, artist, genre)
        @name = name 
        @artist = artist 
        @genre = genre 
        @@count +=1 
        @@genres << genre
        @@artists << artist
    end 

    def self.count
        @@count 
    end

    def self.genres
        @@genres.uniq
        # binding.pry
    end 

    def self.artists 
        @@artists.uniq
    end 

    def self.genre_count 
        # binding.pry
        @@genres.reduce(Hash.new(0)) {|counts, el| counts[el]+=1; counts}
    end 

    def self.artist_count
        @@artists.reduce(Hash.new(0)) {|counts, el| counts[el]+=1; counts}
    end 
   
end 
