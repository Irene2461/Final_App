require "test_helper"

class ManageControllerTest < ActionDispatch::IntegrationTest
  test "should get photo" do
    get manage_photo_url
    assert_response :success
  end

  test "should get album" do
    get manage_album_url
    assert_response :success
  end

  test "should get users" do
    get manage_users_url
    assert_response :success
  end
end
