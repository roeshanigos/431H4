require 'test_helper'

class BookCollectionControllerTest < ActionDispatch::IntegrationTest
  test "should get home" do
    get book_collection_home_url
    assert_response :success
  end

  test "should get book" do
    get book_collection_book_url
    assert_response :success
  end

  test "should get update" do
    get book_collection_update_url
    assert_response :success
  end

  test "should get show" do
    get book_collection_show_url
    assert_response :success
  end

  test "should get delete" do
    get book_collection_delete_url
    assert_response :success
  end

end
