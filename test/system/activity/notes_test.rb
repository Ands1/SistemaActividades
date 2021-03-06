require "application_system_test_case"

class Activity::NotesTest < ApplicationSystemTestCase
  setup do
    @activity_note = activity_notes(:one)
  end

  test "visiting the index" do
    visit activity_notes_url
    assert_selector "h1", text: "Activity/Notes"
  end

  test "creating a Note" do
    visit activity_notes_url
    click_on "New Activity/Note"

    click_on "Create Note"

    assert_text "Note was successfully created"
    click_on "Back"
  end

  test "updating a Note" do
    visit activity_notes_url
    click_on "Edit", match: :first

    click_on "Update Note"

    assert_text "Note was successfully updated"
    click_on "Back"
  end

  test "destroying a Note" do
    visit activity_notes_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Note was successfully destroyed"
  end
end
