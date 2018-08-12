class ApplicationController < ActionController::API
  before_action :get_user

  def get_user
    if params[:achievefolio_user_id]
      @current_user = User.find(params[:achievefolio_user_id])
    else
      @current_user = User.find(1)
    end
  end
end
