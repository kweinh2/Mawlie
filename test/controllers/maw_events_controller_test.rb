require 'test_helper'

class MawEventsControllerTest < ActionController::TestCase
  setup do
    @maw_event = maw_events(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:maw_events)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create maw_event" do
    assert_difference('MawEvent.count') do
      post :create, maw_event: { date: @maw_event.date, name: @maw_event.name, where: @maw_event.where }
    end

    assert_redirected_to maw_event_path(assigns(:maw_event))
  end

  test "should show maw_event" do
    get :show, id: @maw_event
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @maw_event
    assert_response :success
  end

  test "should update maw_event" do
    patch :update, id: @maw_event, maw_event: { date: @maw_event.date, name: @maw_event.name, where: @maw_event.where }
    assert_redirected_to maw_event_path(assigns(:maw_event))
  end

  test "should destroy maw_event" do
    assert_difference('MawEvent.count', -1) do
      delete :destroy, id: @maw_event
    end

    assert_redirected_to maw_events_path
  end
end
