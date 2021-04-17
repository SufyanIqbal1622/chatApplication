class ApplicationController < ActionController::Base
  before_action :authenticate_user!
  before_action :cofigure_permitted_parameters, if: :devise_controller?

  protected
  def cofigure_permitted_parameters
    devise_parameter_sanitizer.permit(:sign_up, keys:[:mail, :username])
  end
end
