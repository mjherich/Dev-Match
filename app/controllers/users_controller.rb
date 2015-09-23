class UsersController < ApplicationController
  before_action :authenticate_user!
  before_action :only_current_user
  
  def show
    @user = User.find( params[:id] ) # :id is used because that is what is used in our routes.rb file
  end
  
  private
    def only_current_user
      @user = User.find( params[:id] )
      redirect_to(root_url) unless @user == current_user
    end
end