class HomeController < ApplicationController
  def index
    @users = User.all
    @user = current_user
	@searches = Search.all
  end
  
  def graphicspie
    @users = User.all
    @user = current_user
	save_search("Pie Chart")
	@searches = Search.all
  end

  def graphicscolumns
    @users = User.all
    @user = current_user
	save_search("Column Chart")
	@searches = Search.all
  end

  def graphicsarea
    @users = User.all
    @user = current_user
	save_search("Area Chart")
	@searches = Search.all
  end

  def graphicslinear
    @users = User.all
    @user = current_user
	save_search("Linear Chart")
	@searches = Search.all
  end

  private
    def save_search (tipo)
	  provse = Search.new
	  provse.tipo = tipo
	  provse.date = Time.now.to_datetime
	  provse.user_id = current_user.id
	  provse.atributos = "none"
	  provse.save
	end
end
