class HomeController < ApplicationController
  def index
    @users = User.all
    @user = current_user
	@searches = Search.all
  end
  
  def graficos
    @users = User.all
    @user = current_user
	@searches = Search.all
  end
end
