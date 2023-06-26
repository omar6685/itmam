require "application_system_test_case"

class NitakTablesTest < ApplicationSystemTestCase
  setup do
    @nitak_table = nitak_tables(:one)
  end

  test "visiting the index" do
    visit nitak_tables_url
    assert_selector "h1", text: "Nitak tables"
  end

  test "should create nitak table" do
    visit nitak_tables_url
    click_on "New nitak table"

    fill_in "Activity table", with: @nitak_table.activity_table_id
    fill_in "Company status", with: @nitak_table.company_status_id
    fill_in "Fixed value", with: @nitak_table.fixed_value
    fill_in "Yearly value", with: @nitak_table.yearly_value
    click_on "Create Nitak table"

    assert_text "Nitak table was successfully created"
    click_on "Back"
  end

  test "should update Nitak table" do
    visit nitak_table_url(@nitak_table)
    click_on "Edit this nitak table", match: :first

    fill_in "Activity table", with: @nitak_table.activity_table_id
    fill_in "Company status", with: @nitak_table.company_status_id
    fill_in "Fixed value", with: @nitak_table.fixed_value
    fill_in "Yearly value", with: @nitak_table.yearly_value
    click_on "Update Nitak table"

    assert_text "Nitak table was successfully updated"
    click_on "Back"
  end

  test "should destroy Nitak table" do
    visit nitak_table_url(@nitak_table)
    click_on "Destroy this nitak table", match: :first

    assert_text "Nitak table was successfully destroyed"
  end
end
