require 'test_helper'

class StaticPagesControllerTest < ActionDispatch::IntegrationTest
  test "should get home" do
    get static_pages_home_url
    assert_response :success
  end

  test "should get jobs" do
    get static_pages_jobs_url
    assert_response :success
  end

  test "should get living" do
    get static_pages_living_url
    assert_response :success
  end

  test "should get fun" do
	get static_pages_fun_url
	assert_response :success
	end

end
