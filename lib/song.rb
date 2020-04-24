class Song
    attr_accessor :name, :artist, :genre
    def initialize(name, artist, genre)
        @name = name
        @artist = artist
        @genre = genre
        @@count = 3
        @@artists = ["Jay-Z", "Jay-Z", "Brittany Spears"]
        @@genres = ["rap", "rap", "pop"]
    end 
    def self.count
        @@count
    end 
    def self.artists 
        @@artists.uniq! 
    end 
    def self.genres 
        @@genres.uniq!
    end 
    def self.genre_count
        hash = Hash.new(0)
        @@genres.each{|key| hash[key] += 1}
        return hash
    end 

    def self.artist_count
        hash = Hash.new(0)
        @@artists.each{|key| hash[key] += 1}
        return hash
    end
end 