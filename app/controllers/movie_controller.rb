class MovieController < ApplicationController
  def search
    @movie = Movie.new_lookup
  end

  def show
  end
end
