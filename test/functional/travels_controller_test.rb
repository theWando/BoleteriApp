require 'test_helper'

class TravelsControllerTest < ActionController::TestCase
  test "should get compra" do
    get :compra
    assert_response :success
  end

end
