class UsersController < ApplicationController

  def index
    @users = User.all
    # if user_signed_in?
    #   redirect_to :controller => 'pages', :action => 'helloworld'
  end

end
