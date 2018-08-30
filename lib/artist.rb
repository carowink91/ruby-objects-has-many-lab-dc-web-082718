require "pry"

class Artist
  attr_accessor :name

  def initialize(name)
    @name = name
  end

  def songs
    artist_songs = Song.all.collect do |song|
      if song.artist == self
        song
      end
    end
    return artist_songs.compact
  end

  def add_song(song)
    song.artist = self
  end

  def add_song_by_name(song_name)
    song = Song.new(song_name)
    song.artist = self
  end

  def self.song_count
    Song.all.count
  end
end
