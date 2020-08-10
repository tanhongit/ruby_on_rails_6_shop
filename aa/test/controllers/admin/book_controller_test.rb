require 'test_helper'

class Admin::BookControllerTest < ActionDispatch::IntegrationTest
  test "should get action1" do
    get admin_book_action1_url
    assert_response :success
  end

  test "should get action2" do
    get admin_book_action2_url
    assert_response :success
  end

end
