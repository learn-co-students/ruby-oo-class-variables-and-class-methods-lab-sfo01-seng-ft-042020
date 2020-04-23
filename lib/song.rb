require 'pry'

class Song
    attr_accessor :name, :genre, :artist
    
    @@count = 0
    @@artists = []
    @@genres = []
    def initialize(name, artist, genre)
        @name = name
        @artist = artist
        @genre = genre
        @@count += 1
        @@artists << self.artist
        @@genres << self.genre
    end

    def self.count
        @@count
    end

    def self.artists
        @@artists.uniq
    end

    def self.genres
        @@genres.uniq
    end

    def self.genre_count
    count_hash = {}
        @@genres.each do |genres|
            if count_hash[genres] == nil
                count_hash[genres] = 1
            elsif count_hash[genres] > 0
                count_hash[genres] += 1
            end
        end
    count_hash
    end

    def self.artist_count
        count_hash = {}
            @@artists.each do |artist|
                if count_hash[artist] == nil
                    count_hash[artist] = 1
                elsif count_hash[artist] > 0
                    count_hash[artist] += 1
                end
            end
        count_hash
        end
end