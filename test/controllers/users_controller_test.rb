require 'test_helper'

class UsersControllerTest < ActionDispatch::IntegrationTest
  test "should get new" do
    get get signup_path
    assert_response :success
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
