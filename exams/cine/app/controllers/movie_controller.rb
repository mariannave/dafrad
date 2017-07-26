class MovieController < ApplicationController
  def index
    if params[:data]
      showtimes = Showtime.at_day(params[:data])
      @movies = Movie.all.includes(:showtimes).where(showtimes: {id: showtimes })
    else
      @movies = Movie.all.limit(5).order(:created_at)
    end

    @showtimes = Showtime.all
  end

end
