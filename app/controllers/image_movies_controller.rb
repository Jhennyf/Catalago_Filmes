class ImageMoviesController < ApplicationController
  def index
    @images = Movie.select(:id, :image_url, :title, :synopsis)
  end
end
