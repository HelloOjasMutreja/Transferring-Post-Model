require "test_helper"

class PositivePostsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @positive_post = positive_posts(:one)
  end

  test "should get index" do
    get positive_posts_url
    assert_response :success
  end

  test "should get new" do
    get new_positive_post_url
    assert_response :success
  end

  test "should create positive_post" do
    assert_difference("PositivePost.count") do
      post positive_posts_url, params: { positive_post: { title: @positive_post.title } }
    end

    assert_redirected_to positive_post_url(PositivePost.last)
  end

  test "should show positive_post" do
    get positive_post_url(@positive_post)
    assert_response :success
  end

  test "should get edit" do
    get edit_positive_post_url(@positive_post)
    assert_response :success
  end

  test "should update positive_post" do
    patch positive_post_url(@positive_post), params: { positive_post: { title: @positive_post.title } }
    assert_redirected_to positive_post_url(@positive_post)
  end

  test "should destroy positive_post" do
    assert_difference("PositivePost.count", -1) do
      delete positive_post_url(@positive_post)
    end

    assert_redirected_to positive_posts_url
  end
end
