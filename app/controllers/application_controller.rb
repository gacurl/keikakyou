class ApplicationController < ActionController::Base

  private
  def authenticate_user!
    if user_signed_in?
      root_path
    else
      render 'projects/home', notice: "Please Login to view that page!"
    end
  end
end
