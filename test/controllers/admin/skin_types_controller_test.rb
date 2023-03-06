require "test_helper"

class Admin::SkinTypesControllerTest < ActionDispatch::IntegrationTest
  test "should get edit" do
    get admin_skin_types_edit_url
    assert_response :success
  end

  test "should get index" do
    get admin_skin_types_index_url
    assert_response :success
  end
end
