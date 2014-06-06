class SessionsController < ApplicationController

  def logout
    cookies["user_id"] = nil
    redirect_to "/", :notice => "We are sad to see you go. Love."
  end

  def authenticate
    the_user = User.find_by("username" => params["username"])
    if the_user != nil
      if the_user["password"] == params["password"]
        cookies["user_id"] = the_user["id"]
        redirect_to "/", :notice => "Welcome!"
      else
        logger.debug "Welcome!!"
        redirect_to "/login", :notice => "Unknown password. Please try again."
      end
    else
      redirect_to "/login", :notice => "Unknown password. Please try again."
    end
  end

end
