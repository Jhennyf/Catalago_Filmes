class MoviesController < ApplicationController
  before_action :set_movie, only: %i[show]

  def index
    @movies = Movie.ransack(params[:q]).result.order(created_at: :desc).page(params[:page])
  end

  def new
    @movie = Movie.new
  end

  def create
    @movie = Movie.new(movie_params)
    @movie.user = current_user

    if @movie.save
      redirect_to @movie, notice: "Filme criado com sucesso."
    else
      render :new, status: :unprocessable_entity
    end
  end

  def show; end

  private

  def set_movie
    @movie = Movie.find(params[:id])
  end

  def movie_params
    params.require(:movie).permit(
      :title,
      :synopsis,
      :realease_year,
      :duration,
      :director,
      :image_url,   
      category_ids: []
    )
  end
end