include Pundit::Authorization

class ApplicationController < ActionController::Base
  before_action :authenticate_user!
  before_action :configure_permitted_parameters, if: :devise_controller?
  after_action :verify_authorized, except: :index, unless: :skip_pundit?
  after_action :verify_policy_scoped, only: :index, unless: :skip_pundit?

  def configure_permitted_parameters
    devise_parameter_sanitizer.permit(:sign_up, keys: [:full_name, :phone_number])
    devise_parameter_sanitizer.permit(:account_update, keys: [:full_name, :phone_number])
  end

  private

  def skip_pundit?
     devise_controller? || params[:controller] =~ /(^(rails_)?admin)|(^pages$)/
  end
end
