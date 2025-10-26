class ApplicationController < ActionController::Base
  # Only allow modern browsers supporting webp images, web push, badges, import maps, CSS nesting, and CSS :has.
  allow_browser versions: :modern
  before_action :set_ransack

  private

  def set_ransack
    @q = Movie.ransack(params[:q])
  end
end
