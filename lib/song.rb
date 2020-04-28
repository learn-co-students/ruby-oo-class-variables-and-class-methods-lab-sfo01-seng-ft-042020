
class Song

    attr_accessor :name, :artist, :genre

    attr_reader :artists

    @@count = 0
    @@genres = []
    @@artists = []

    def initialize(name, artist, genre)
        @name = name
        @artist = artist
        @genre = genre
        @@count += 1
        @@genres.push(self.genre)
        @@artists.push(self.artist)
    end

    def self.count
        @@count
    end

    def self.genres
        @@genres.uniq { |x| x }
    end

    def self.artists
        @@artists.uniq { |x| x }   
    end

    def self.genre_count
        genre_count = {}
        @@genres.each do |genre|
            if genre_count[genre]
                genre_count[genre] += 1 
            else
                genre_count[genre] = 1
            end
        end
    genre_count
    end

    def self.artist_count
        artist_count = {}
        @@artists.each do |artist|
            if artist_count[artist]
                artist_count[artist] += 1
            else
                artist_count[artist] = 1
            end
        end
    artist_count
    end
            
end


