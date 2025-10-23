class ImageMoviesController < ApplicationController
  def index
    @images = Movie.select(:image_url, :synopsis, :title)
  end
end
