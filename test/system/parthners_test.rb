require "application_system_test_case"

class ParthnersTest < ApplicationSystemTestCase
  setup do
    @parthner = parthners(:one)
  end

  test "visiting the index" do
    visit parthners_url
    assert_selector "h1", text: "Parthners"
  end

  test "creating a Parthner" do
    visit parthners_url
    click_on "New Parthner"

    fill_in "Name", with: @parthner.name
    click_on "Create Parthner"

    assert_text "Parthner was successfully created"
    click_on "Back"
  end

  test "updating a Parthner" do
    visit parthners_url
    click_on "Edit", match: :first

    fill_in "Name", with: @parthner.name
    click_on "Update Parthner"

    assert_text "Parthner was successfully updated"
    click_on "Back"
  end

  test "destroying a Parthner" do
    visit parthners_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Parthner was successfully destroyed"
  end
end
