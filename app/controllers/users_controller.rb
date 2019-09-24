class UsersController < ApplicationController
  def new
	  @user=User.new
  end
  def show
	  @user=User.find(parms[:id])
end

def create
    @user = User.new(user_params)
      if @user.save
        redirect_to '/'
      end
    end

  private
  def user_params
      params.require(:user).permit(:name, :school)
  end

end
