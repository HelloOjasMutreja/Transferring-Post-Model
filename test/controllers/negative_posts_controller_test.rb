require "test_helper"

class NegativePostsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @negative_post = negative_posts(:one)
  end

  test "should get index" do
    get negative_posts_url
    assert_response :success
  end

  test "should get new" do
    get new_negative_post_url
    assert_response :success
  end

  test "should create negative_post" do
    assert_difference("NegativePost.count") do
      post negative_posts_url, params: { negative_post: { title: @negative_post.title } }
    end

    assert_redirected_to negative_post_url(NegativePost.last)
  end

  test "should show negative_post" do
    get negative_post_url(@negative_post)
    assert_response :success
  end

  test "should get edit" do
    get edit_negative_post_url(@negative_post)
    assert_response :success
  end

  test "should update negative_post" do
    patch negative_post_url(@negative_post), params: { negative_post: { title: @negative_post.title } }
    assert_redirected_to negative_post_url(@negative_post)
  end

  test "should destroy negative_post" do
    assert_difference("NegativePost.count", -1) do
      delete negative_post_url(@negative_post)
    end

    assert_redirected_to negative_posts_url
  end
end
