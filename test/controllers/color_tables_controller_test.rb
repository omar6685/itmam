require "test_helper"

class ColorTablesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @color_table = color_tables(:one)
  end

  test "should get index" do
    get color_tables_url
    assert_response :success
  end

  test "should get new" do
    get new_color_table_url
    assert_response :success
  end

  test "should create color_table" do
    assert_difference("ColorTable.count") do
      post color_tables_url, params: { color_table: { color: @color_table.color } }
    end

    assert_redirected_to color_table_url(ColorTable.last)
  end

  test "should show color_table" do
    get color_table_url(@color_table)
    assert_response :success
  end

  test "should get edit" do
    get edit_color_table_url(@color_table)
    assert_response :success
  end

  test "should update color_table" do
    patch color_table_url(@color_table), params: { color_table: { color: @color_table.color } }
    assert_redirected_to color_table_url(@color_table)
  end

  test "should destroy color_table" do
    assert_difference("ColorTable.count", -1) do
      delete color_table_url(@color_table)
    end

    assert_redirected_to color_tables_url
  end
end
