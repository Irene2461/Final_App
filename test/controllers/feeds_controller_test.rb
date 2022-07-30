require "test_helper"

class FeedsControllerTest < ActionDispatch::IntegrationTest
  test "should get photos" do
    get feeds_photos_url
    assert_response :success
  end

  test "should get albums" do
    get feeds_albums_url
    assert_response :success
  end
end
