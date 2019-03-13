require 'test_helper'

class Kcfarmer::BlogsControllerTest < ActionDispatch::IntegrationTest
  test "should get new" do
    get kcfarmer_blogs_new_url
    assert_response :success
  end

  test "should get create" do
    get kcfarmer_blogs_create_url
    assert_response :success
  end

  test "should get edit" do
    get kcfarmer_blogs_edit_url
    assert_response :success
  end

  test "should get update" do
    get kcfarmer_blogs_update_url
    assert_response :success
  end

  test "should get index" do
    get kcfarmer_blogs_index_url
    assert_response :success
  end

  test "should get show" do
    get kcfarmer_blogs_show_url
    assert_response :success
  end

  test "should get destroy" do
    get kcfarmer_blogs_destroy_url
    assert_response :success
  end

end
