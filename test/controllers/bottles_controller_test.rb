require 'test_helper'

class BottlesControllerTest < ActionController::TestCase
  test "should get index" do
    get :index
    assert_response :success
  end

end
