# frozen_string_literal: true

class MenuComponent < ViewComponent::Base
  attr_reader :q

  def initialize(q:)
    @q = q
  end
end
