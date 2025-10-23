# frozen_string_literal: true

class MovieBannerComponent < ViewComponent::Base
  attr_reader :object

  def initialize(object:)
    @object = object
  end
end
