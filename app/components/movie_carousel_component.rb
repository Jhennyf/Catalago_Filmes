# frozen_string_literal: true

class MovieCarouselComponent < ViewComponent::Base
  attr_reader :title, :movies, :button_text, :button_path

  def initialize(title:, movies:, button_text: "SAIBA MAIS", button_path: nil)
    @title = title
    @movies = movies
    @button_text = button_text
    @button_path = button_path
  end
end
