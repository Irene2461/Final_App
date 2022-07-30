require "test_helper"

class DiscoverControllerTest < ActionDispatch::IntegrationTest
  test "should get photos" do
    get discover_photos_url
    assert_response :success
  end

  test "should get albums" do
    get discover_albums_url
    assert_response :success
  end
end
