require "test_helper"

class NitakTablesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @nitak_table = nitak_tables(:one)
  end

  test "should get index" do
    get nitak_tables_url
    assert_response :success
  end

  test "should get new" do
    get new_nitak_table_url
    assert_response :success
  end

  test "should create nitak_table" do
    assert_difference("NitakTable.count") do
      post nitak_tables_url, params: { nitak_table: { activity_table_id: @nitak_table.activity_table_id, color_table_id: @nitak_table.color_table_id, fixed_value: @nitak_table.fixed_value, yearly_value: @nitak_table.yearly_value } }
    end

    assert_redirected_to nitak_table_url(NitakTable.last)
  end

  test "should show nitak_table" do
    get nitak_table_url(@nitak_table)
    assert_response :success
  end

  test "should get edit" do
    get edit_nitak_table_url(@nitak_table)
    assert_response :success
  end

  test "should update nitak_table" do
    patch nitak_table_url(@nitak_table), params: { nitak_table: { activity_table_id: @nitak_table.activity_table_id, color_table_id: @nitak_table.color_table_id, fixed_value: @nitak_table.fixed_value, yearly_value: @nitak_table.yearly_value } }
    assert_redirected_to nitak_table_url(@nitak_table)
  end

  test "should destroy nitak_table" do
    assert_difference("NitakTable.count", -1) do
      delete nitak_table_url(@nitak_table)
    end

    assert_redirected_to nitak_tables_url
  end
end
