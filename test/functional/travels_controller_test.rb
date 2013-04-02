require 'test_helper'

class TravelsControllerTest < ActionController::TestCase
  test "should get comprado" do
    get :comprado
    assert_response :success
  end

end
