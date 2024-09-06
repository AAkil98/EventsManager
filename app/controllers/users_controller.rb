class UsersController < ApplicationController
  before_action :authenticate_user!
  before_action :authorize_admin

  def index
    @users = policy_scope(User)
  end

  private

  def authorize_admin
    unless current_user.admin?
      flash[:alert] = " you are not authorized to view this page"
      redirect_to(root_path)
    end
  end
end
