require 'test_helper'

class SponsorMeetingsControllerTest < ActionController::TestCase
  setup do
    @sponsor_meeting = sponsor_meetings(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:sponsor_meetings)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create sponsor_meeting" do
    assert_difference('SponsorMeeting.count') do
      post :create, sponsor_meeting: { meeting_id: @sponsor_meeting.meeting_id, sponsor_id: @sponsor_meeting.sponsor_id }
    end

    assert_redirected_to sponsor_meeting_path(assigns(:sponsor_meeting))
  end

  test "should show sponsor_meeting" do
    get :show, id: @sponsor_meeting
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @sponsor_meeting
    assert_response :success
  end

  test "should update sponsor_meeting" do
    put :update, id: @sponsor_meeting, sponsor_meeting: { meeting_id: @sponsor_meeting.meeting_id, sponsor_id: @sponsor_meeting.sponsor_id }
    assert_redirected_to sponsor_meeting_path(assigns(:sponsor_meeting))
  end

  test "should destroy sponsor_meeting" do
    assert_difference('SponsorMeeting.count', -1) do
      delete :destroy, id: @sponsor_meeting
    end

    assert_redirected_to sponsor_meetings_path
  end
end
