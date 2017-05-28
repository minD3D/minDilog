class SessionsController < ApplicationController
  def new
  end

  def create
    user = User.find_by(email:params[:email].downcase)
    if user && user.authenticate(params[:password])
      session[:user_id]= user.id
      redirect_to :root
    else
      flash.now[:alert]="wrong params"
      render 'new'
    end
  end
end
