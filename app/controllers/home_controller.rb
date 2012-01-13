class HomeController < ApplicationController
  def Home
    @title = "JapanPage"
    if signed_in?
     @user = current_user
    end
  end
  def contact
    @title = "Contact"
  end

  def about
    @title = "About"
  end
  
  def help
    @title = "Help"
  end
end
