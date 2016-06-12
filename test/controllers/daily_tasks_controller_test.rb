require 'test_helper'

class DailyTasksControllerTest < ActionController::TestCase
  setup do
    @daily_task = daily_tasks(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:daily_tasks)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create daily_task" do
    assert_difference('DailyTask.count') do
      post :create, daily_task: { title: @daily_task.title, user_id: @daily_task.user_id }
    end

    assert_redirected_to daily_task_path(assigns(:daily_task))
  end

  test "should show daily_task" do
    get :show, id: @daily_task
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @daily_task
    assert_response :success
  end

  test "should update daily_task" do
    patch :update, id: @daily_task, daily_task: { title: @daily_task.title, user_id: @daily_task.user_id }
    assert_redirected_to daily_task_path(assigns(:daily_task))
  end

  test "should destroy daily_task" do
    assert_difference('DailyTask.count', -1) do
      delete :destroy, id: @daily_task
    end

    assert_redirected_to daily_tasks_path
  end
end
