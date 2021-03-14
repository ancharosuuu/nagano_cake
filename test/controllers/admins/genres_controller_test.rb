require 'test_helper'

class Admins::GenresControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get admins_genres_index_url
    assert_response :success
  end

  test "should get new" do
    get admins_genres_new_url
    assert_response :success
  end

  test "should get show" do
    get admins_genres_show_url
    assert_response :success
  end

  test "should get create" do
    get admins_genres_create_url
    assert_response :success
  end

  test "should get edit" do
    get admins_genres_edit_url
    assert_response :success
  end

end
