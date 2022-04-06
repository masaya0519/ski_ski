require "test_helper"

class Member::SkisControllerTest < ActionDispatch::IntegrationTest
  test "should get show" do
    get member_skis_show_url
    assert_response :success
  end
end
