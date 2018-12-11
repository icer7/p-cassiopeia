require 'test_helper'

class FaceDetectionsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @face_detection = face_detections(:one)
  end

  test "should get index" do
    get face_detections_url
    assert_response :success
  end

  test "should get new" do
    get new_face_detection_url
    assert_response :success
  end

  test "should create face_detection" do
    assert_difference('FaceDetection.count') do
      post face_detections_url, params: { face_detection: {  } }
    end

    assert_redirected_to face_detection_url(FaceDetection.last)
  end

  test "should show face_detection" do
    get face_detection_url(@face_detection)
    assert_response :success
  end

  test "should get edit" do
    get edit_face_detection_url(@face_detection)
    assert_response :success
  end

  test "should update face_detection" do
    patch face_detection_url(@face_detection), params: { face_detection: {  } }
    assert_redirected_to face_detection_url(@face_detection)
  end

  test "should destroy face_detection" do
    assert_difference('FaceDetection.count', -1) do
      delete face_detection_url(@face_detection)
    end

    assert_redirected_to face_detections_url
  end
end
