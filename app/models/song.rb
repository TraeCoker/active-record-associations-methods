require 'pry'
class Song < ActiveRecord::Base
  belongs_to :artist
  belongs_to :genre

  def get_genre_name
    genre.name 
  end

  def drake_made_this
    if Artist.find_by(name: "Drake")
      self.artist = Artist.find_by(name: "Drake")
    else 
      self.artist = Artist.create(name: "Drake")
    end 
  end
end