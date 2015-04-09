require 'test_helper'

class PagesControllerTest < ActionController::TestCase
  test "should get try-challenge" do
    get :try-challenge
    assert_response :success
  end

end
