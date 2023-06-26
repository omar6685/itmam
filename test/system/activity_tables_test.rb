require "application_system_test_case"

class ActivityTablesTest < ApplicationSystemTestCase
  setup do
    @activity_table = activity_tables(:one)
  end

  test "visiting the index" do
    visit activity_tables_url
    assert_selector "h1", text: "Activity tables"
  end

  test "should create activity table" do
    visit activity_tables_url
    click_on "New activity table"

    fill_in "Activitiy", with: @activity_table.activitiy
    click_on "Create Activity table"

    assert_text "Activity table was successfully created"
    click_on "Back"
  end

  test "should update Activity table" do
    visit activity_table_url(@activity_table)
    click_on "Edit this activity table", match: :first

    fill_in "Activitiy", with: @activity_table.activitiy
    click_on "Update Activity table"

    assert_text "Activity table was successfully updated"
    click_on "Back"
  end

  test "should destroy Activity table" do
    visit activity_table_url(@activity_table)
    click_on "Destroy this activity table", match: :first

    assert_text "Activity table was successfully destroyed"
  end
end
