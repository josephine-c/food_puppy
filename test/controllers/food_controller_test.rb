require 'test_helper'

class FoodControllerTest < ActionDispatch::IntegrationTest
  test "should get search" do
    get food_search_url
    assert_response :success
  end

end
