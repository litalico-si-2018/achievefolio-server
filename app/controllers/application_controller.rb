class ApplicationController < ActionController::API
  before_action :get_user
  
  def get_user
    # @current_user = User.find(1)
    @current_user = User.find(request.headers["achievefolio-user-id"])
  end
end
