require 'test_helper'

class FeedbackItemsControllerTest < ActionController::TestCase
  setup do
    @feedback_item = feedback_items(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:feedback_items)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create feedback_item" do
    assert_difference('FeedbackItem.count') do
      post :create, feedback_item: { description: @feedback_item.description, start: @feedback_item.start, theme: @feedback_item.theme, title: @feedback_item.title }
    end

    assert_redirected_to feedback_item_path(assigns(:feedback_item))
  end

  test "should show feedback_item" do
    get :show, id: @feedback_item
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @feedback_item
    assert_response :success
  end

  test "should update feedback_item" do
    patch :update, id: @feedback_item, feedback_item: { description: @feedback_item.description, start: @feedback_item.start, theme: @feedback_item.theme, title: @feedback_item.title }
    assert_redirected_to feedback_item_path(assigns(:feedback_item))
  end

  test "should destroy feedback_item" do
    assert_difference('FeedbackItem.count', -1) do
      delete :destroy, id: @feedback_item
    end

    assert_redirected_to feedback_items_path
  end
end
