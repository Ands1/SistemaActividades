require "test_helper"

class Activity::NotesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @activity_note = activity_notes(:one)
  end

  test "should get index" do
    get activity_notes_url
    assert_response :success
  end

  test "should get new" do
    get new_activity_note_url
    assert_response :success
  end

  test "should create activity_note" do
    assert_difference('Activity::Note.count') do
      post activity_notes_url, params: { activity_note: {  } }
    end

    assert_redirected_to activity_note_url(Activity::Note.last)
  end

  test "should show activity_note" do
    get activity_note_url(@activity_note)
    assert_response :success
  end

  test "should get edit" do
    get edit_activity_note_url(@activity_note)
    assert_response :success
  end

  test "should update activity_note" do
    patch activity_note_url(@activity_note), params: { activity_note: {  } }
    assert_redirected_to activity_note_url(@activity_note)
  end

  test "should destroy activity_note" do
    assert_difference('Activity::Note.count', -1) do
      delete activity_note_url(@activity_note)
    end

    assert_redirected_to activity_notes_url
  end
end
