require "test_helper"

class ActivityTablesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @activity_table = activity_tables(:one)
  end

  test "should get index" do
    get activity_tables_url
    assert_response :success
  end

  test "should get new" do
    get new_activity_table_url
    assert_response :success
  end

  test "should create activity_table" do
    assert_difference("ActivityTable.count") do
      post activity_tables_url, params: { activity_table: { activitiy: @activity_table.activitiy } }
    end

    assert_redirected_to activity_table_url(ActivityTable.last)
  end

  test "should show activity_table" do
    get activity_table_url(@activity_table)
    assert_response :success
  end

  test "should get edit" do
    get edit_activity_table_url(@activity_table)
    assert_response :success
  end

  test "should update activity_table" do
    patch activity_table_url(@activity_table), params: { activity_table: { activitiy: @activity_table.activitiy } }
    assert_redirected_to activity_table_url(@activity_table)
  end

  test "should destroy activity_table" do
    assert_difference("ActivityTable.count", -1) do
      delete activity_table_url(@activity_table)
    end

    assert_redirected_to activity_tables_url
  end
end
