require 'test_helper'

class BloggerControllerTest < ActionDispatch::IntegrationTest
  test "should get [actions]" do
    get blogger_[actions]_url
    assert_response :success
  end

end
