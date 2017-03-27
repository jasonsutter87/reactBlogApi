require 'test_helper'

class PostsControllerTest < ActionDispatch::IntegrationTest
  test "should get title:string" do
    get posts_title:string_url
    assert_response :success
  end

  test "should get description:text" do
    get posts_description:text_url
    assert_response :success
  end

end
