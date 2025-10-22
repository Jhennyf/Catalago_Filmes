class MoviesController < ApplicationController
  before_action :set_movie, only: %i[show]
  def index
    @q = Movie.ransack(params[:q])
    @movies = @q.result
  end

  def show; end

  private

  def set_movie
    @movie = Movie.find(params[:id])
  end

  def movie_params
    params.require(:movie).permit(:title, :synopsis, :release_year, :duration, :director, category_ids: [])
  end
end
