require 'test_helper'

class LawyersControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get lawyers_index_url
    assert_response :success
  end

  test "should get show" do
    get lawyers_show_url
    assert_response :success
  end

  test "should get new" do
    get lawyers_new_url
    assert_response :success
  end

  test "should get create" do
    get lawyers_create_url
    assert_response :success
  end

  test "should get edit" do
    get lawyers_edit_url
    assert_response :success
  end

  test "should get update" do
    get lawyers_update_url
    assert_response :success
  end

  test "should get delete" do
    get lawyers_delete_url
    assert_response :success
  end

end
