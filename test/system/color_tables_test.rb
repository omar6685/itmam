require "application_system_test_case"

class ColorTablesTest < ApplicationSystemTestCase
  setup do
    @color_table = color_tables(:one)
  end

  test "visiting the index" do
    visit color_tables_url
    assert_selector "h1", text: "Color tables"
  end

  test "should create color table" do
    visit color_tables_url
    click_on "New color table"

    fill_in "Color", with: @color_table.color
    click_on "Create Color table"

    assert_text "Color table was successfully created"
    click_on "Back"
  end

  test "should update Color table" do
    visit color_table_url(@color_table)
    click_on "Edit this color table", match: :first

    fill_in "Color", with: @color_table.color
    click_on "Update Color table"

    assert_text "Color table was successfully updated"
    click_on "Back"
  end

  test "should destroy Color table" do
    visit color_table_url(@color_table)
    click_on "Destroy this color table", match: :first

    assert_text "Color table was successfully destroyed"
  end
end
