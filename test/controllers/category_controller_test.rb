require 'test_helper'

class CategoryControllerTest < ActionDispatch::IntegrationTest
  test "should get cat" do
    get category_cat_url
    assert_response :success
  end

end
