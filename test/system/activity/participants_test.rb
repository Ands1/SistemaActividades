require "application_system_test_case"

class Activity::ParticipantsTest < ApplicationSystemTestCase
  setup do
    @activity_participant = activity_participants(:one)
  end

  test "visiting the index" do
    visit activity_participants_url
    assert_selector "h1", text: "Activity/Participants"
  end

  test "creating a Participant" do
    visit activity_participants_url
    click_on "New Activity/Participant"

    click_on "Create Participant"

    assert_text "Participant was successfully created"
    click_on "Back"
  end

  test "updating a Participant" do
    visit activity_participants_url
    click_on "Edit", match: :first

    click_on "Update Participant"

    assert_text "Participant was successfully updated"
    click_on "Back"
  end

  test "destroying a Participant" do
    visit activity_participants_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Participant was successfully destroyed"
  end
end
