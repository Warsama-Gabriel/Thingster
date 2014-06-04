class UsersController < ApplicationController

  def index
    if user_signed_in?
      redirect_to :controller => 'pages', :action => 'helloworld'
    end
  end
end
