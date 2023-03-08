require "test_helper"

class Admin::CosmeticsControllerTest < ActionDispatch::IntegrationTest
  test "should get new" do
    get admin_cosmetics_new_url
    assert_response :success
  end

  test "should get index" do
    get admin_cosmetics_index_url
    assert_response :success
  end

  test "should get show" do
    get admin_cosmetics_show_url
    assert_response :success
  end

  test "should get edit" do
    get admin_cosmetics_edit_url
    assert_response :success
  end
end
