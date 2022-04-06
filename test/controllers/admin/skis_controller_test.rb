require "test_helper"

class Admin::SkisControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get admin_skis_index_url
    assert_response :success
  end

  test "should get new" do
    get admin_skis_new_url
    assert_response :success
  end

  test "should get create" do
    get admin_skis_create_url
    assert_response :success
  end

  test "should get show" do
    get admin_skis_show_url
    assert_response :success
  end

  test "should get edit" do
    get admin_skis_edit_url
    assert_response :success
  end

  test "should get update" do
    get admin_skis_update_url
    assert_response :success
  end
end
