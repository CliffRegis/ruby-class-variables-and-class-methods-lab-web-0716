class Song
	attr_accessor :name, :artist, :genre
	@@count =0
	@@genres = []
	@@artists = []
 def initialize(name, artist, genre)
 	@name = name
 	@artist = artist
 	@genre = genre
 	@@artists << artist
 	@@genres << genre
 	@@count +=1
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

 	result = Hash.new(0)
    @@genres.each { |word| result[word] += 1 }
   return result
 end
 def self.artist_count

 	result = Hash.new(0)
    @@artists.each { |word| result[word] += 1 }
   return result
 end
end

#lf.find
#detect