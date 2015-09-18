class UsersController < ApplicationController
  def show
    @user = User.find( params[:id]) # :id is used because that is what is used in our routes.rb file
  end
end