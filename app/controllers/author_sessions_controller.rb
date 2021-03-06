class AuthorSessionsController < ApplicationController
  def new
  end

  def create
    if login(params[:email], params[:password])
      redirect_back_or_to(bars_path, notice: 'Logged in successfully.')
    else
      flash.now.alert = "Login failed."
      render action: :new
    end
  end

  def destroy
    logout
    render action: :new
    # redirect_to(:authors, notice: 'Logged out!')
  end
end
