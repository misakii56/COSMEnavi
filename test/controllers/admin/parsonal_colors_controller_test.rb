require "test_helper"

class Admin::ParsonalColorsControllerTest < ActionDispatch::IntegrationTest
  test "should get edit" do
    get admin_parsonal_colors_edit_url
    assert_response :success
  end

  test "should get index" do
    get admin_parsonal_colors_index_url
    assert_response :success
  end
end
