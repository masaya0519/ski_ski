require "test_helper"

class Member::GenresControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get member_genres_index_url
    assert_response :success
  end
end
