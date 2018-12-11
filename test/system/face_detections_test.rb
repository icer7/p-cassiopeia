require "application_system_test_case"

class FaceDetectionsTest < ApplicationSystemTestCase
  setup do
    @face_detection = face_detections(:one)
  end

  test "visiting the index" do
    visit face_detections_url
    assert_selector "h1", text: "Face Detections"
  end

  test "creating a Face detection" do
    visit face_detections_url
    click_on "New Face Detection"

    click_on "Create Face detection"

    assert_text "Face detection was successfully created"
    click_on "Back"
  end

  test "updating a Face detection" do
    visit face_detections_url
    click_on "Edit", match: :first

    click_on "Update Face detection"

    assert_text "Face detection was successfully updated"
    click_on "Back"
  end

  test "destroying a Face detection" do
    visit face_detections_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Face detection was successfully destroyed"
  end
end
