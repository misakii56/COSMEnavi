require "test_helper"

class Public::CosmeticsControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get public_cosmetics_index_url
    assert_response :success
  end

  test "should get show" do
    get public_cosmetics_show_url
    assert_response :success
  end
end
