class ApplicationController < ActionController::API
  before_action :get_user
  
  def get_user
  	if request.headers["achievefolio-user-id"] then
      @current_user = User.find(request.headers["achievefolio-user-id"])
    else
      @current_user = User.find(1)
    end
  end
end
