class Song
    attr_accessor :name, :artist, :genre

    @@count = 0
    @@genres = []
    @@artists = []


    def initialize(name, artist, genre)
        @@count += 1
        @@genres << genre
        @@artists << artist
        @name = name
        @artist = artist
        @genre = genre
    end

    def self.count
        @@count
    end

    def self.genres
        self.genre_count.keys
    end

    def self.artists
        self.artist_count.keys
    end

    def self.artist_count
        artist_count = Hash.new
        @@artists.each do |artist|
            artist_count[artist] = 0 if artist_count[artist].nil?
            artist_count[artist] += 1
        end
        artist_count
    end

    def self.genre_count
        genre_count = Hash.new
        @@genres.each do |genre|
            genre_count[genre] = 0 if genre_count[genre].nil?
            genre_count[genre] += 1
        end
        genre_count
    end
end
