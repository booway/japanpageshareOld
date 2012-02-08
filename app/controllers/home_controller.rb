class HomeController < ApplicationController
  def public
    @title = "Welcome"
  end
  
  def home
    @title = "JapanPage"
    # if signed_in?
     # @user = current_user
    # end
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
