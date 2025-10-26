class ApplicationController < ActionController::Base
  # Only allow modern browsers supporting webp images, web push, badges, import maps, CSS nesting, and CSS :has.
  allow_browser versions: :modern
  before_action :set_ransack
  before_action :configure_permitted_parameters, if: :devise_controller?

  private

  def set_ransack
    @q = Movie.ransack(params[:q])
  end

  def configure_permitted_parameters
    devise_parameter_sanitizer.permit(:sign_up, keys: [ :name ])

    devise_parameter_sanitizer.permit(:account_update, keys: [ :name ])
  end

  def after_sign_out_path_for(resource_or_scope)
    new_user_session_path
  end
end
