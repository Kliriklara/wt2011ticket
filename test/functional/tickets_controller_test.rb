require 'test_helper'

class TicketsControllerTest < ActionController::TestCase
  test "should get index" do
    get :index
    assert_response :success
  end

  test "should get request" do
    get :request
    assert_response :success
  end

end
