class Movie < ApplicationRecord
  has_many :reviews

  def self.new_lookup(movie)
    new_lookup = Omdb::Api.new.fetch(movie)
    return "No such movie" unless new_lookup[:movie]

    movie = Movie.new(title: new_lookup[:movie].title,
                      release_date: new_lookup[:movie].released,
                      rating: new_lookup[:movie].rated,
                      genre: new_lookup[:movie].genre,
                      director: new_lookup[:movie].director)

    movie
  end

end
