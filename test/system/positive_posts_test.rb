require "application_system_test_case"

class PositivePostsTest < ApplicationSystemTestCase
  setup do
    @positive_post = positive_posts(:one)
  end

  test "visiting the index" do
    visit positive_posts_url
    assert_selector "h1", text: "Positive posts"
  end

  test "should create positive post" do
    visit positive_posts_url
    click_on "New positive post"

    fill_in "Title", with: @positive_post.title
    click_on "Create Positive post"

    assert_text "Positive post was successfully created"
    click_on "Back"
  end

  test "should update Positive post" do
    visit positive_post_url(@positive_post)
    click_on "Edit this positive post", match: :first

    fill_in "Title", with: @positive_post.title
    click_on "Update Positive post"

    assert_text "Positive post was successfully updated"
    click_on "Back"
  end

  test "should destroy Positive post" do
    visit positive_post_url(@positive_post)
    click_on "Destroy this positive post", match: :first

    assert_text "Positive post was successfully destroyed"
  end
end
