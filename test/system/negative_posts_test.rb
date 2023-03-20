require "application_system_test_case"

class NegativePostsTest < ApplicationSystemTestCase
  setup do
    @negative_post = negative_posts(:one)
  end

  test "visiting the index" do
    visit negative_posts_url
    assert_selector "h1", text: "Negative posts"
  end

  test "should create negative post" do
    visit negative_posts_url
    click_on "New negative post"

    fill_in "Title", with: @negative_post.title
    click_on "Create Negative post"

    assert_text "Negative post was successfully created"
    click_on "Back"
  end

  test "should update Negative post" do
    visit negative_post_url(@negative_post)
    click_on "Edit this negative post", match: :first

    fill_in "Title", with: @negative_post.title
    click_on "Update Negative post"

    assert_text "Negative post was successfully updated"
    click_on "Back"
  end

  test "should destroy Negative post" do
    visit negative_post_url(@negative_post)
    click_on "Destroy this negative post", match: :first

    assert_text "Negative post was successfully destroyed"
  end
end
