class UsersController < ApplicationController
  
	def create
		new_user = User.create(user_params)
		if new_user.valid?
			flash[:success] = "You have successfully registered!"
			redirect_to "/"
		else
			flash[:errors] = new_user.errors.full_messages
			redirect_to "/"
		end
	end

  def index
  end

  def show
  end

  def new
  end

  def edit
  end

  private

  def user_params
  	params.require(:kitty).permit(:name, :email, :password, :password_confirmation)
  end

end
