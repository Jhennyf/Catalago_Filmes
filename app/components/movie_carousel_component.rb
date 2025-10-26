# frozen_string_literal: true

class MovieCarouselComponent < ViewComponent::Base
  attr_reader :title, :movies

  def initialize(title:, movies:)
    @title = title
    @movies = movies
  end
end
