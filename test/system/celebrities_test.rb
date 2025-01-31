require "application_system_test_case"

class CelebritiesTest < ApplicationSystemTestCase
  setup do
    @celebrity = celebrities(:one)
  end

  test "visiting the index" do
    visit celebrities_url
    assert_selector "h1", text: "Celebrities"
  end

  test "should create celebrity" do
    visit celebrities_url
    click_on "New celebrity"

    fill_in "Image url", with: @celebrity.image_url
    fill_in "Known cnt", with: @celebrity.known_cnt
    fill_in "Name", with: @celebrity.name
    fill_in "Unknown cnt", with: @celebrity.unknown_cnt
    click_on "Create Celebrity"

    assert_text "Celebrity was successfully created"
    click_on "Back"
  end

  test "should update Celebrity" do
    visit celebrity_url(@celebrity)
    click_on "Edit this celebrity", match: :first

    fill_in "Image url", with: @celebrity.image_url
    fill_in "Known cnt", with: @celebrity.known_cnt
    fill_in "Name", with: @celebrity.name
    fill_in "Unknown cnt", with: @celebrity.unknown_cnt
    click_on "Update Celebrity"

    assert_text "Celebrity was successfully updated"
    click_on "Back"
  end

  test "should destroy Celebrity" do
    visit celebrity_url(@celebrity)
    click_on "Destroy this celebrity", match: :first

    assert_text "Celebrity was successfully destroyed"
  end
end
