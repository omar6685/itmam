require "application_system_test_case"

class InspectionsTest < ApplicationSystemTestCase
  setup do
    @inspection = inspections(:one)
  end

  test "visiting the index" do
    visit inspections_url
    assert_selector "h1", text: "Inspections"
  end

  test "should create inspection" do
    visit inspections_url
    click_on "New inspection"

    fill_in "Branchs quantity", with: @inspection.branchs_quantity
    fill_in "Company name", with: @inspection.company_name
    fill_in "Company status", with: @inspection.company_status_id
    fill_in "Email", with: @inspection.email
    fill_in "Explanation", with: @inspection.explanation
    fill_in "Nonsaudi employees", with: @inspection.nonsaudi_employees
    fill_in "Personal name", with: @inspection.personal_name
    fill_in "Phone number", with: @inspection.phone_number
    check "Salary protection" if @inspection.salary_protection
    fill_in "Saudi employees", with: @inspection.saudi_employees
    check "Want inspection" if @inspection.want_inspection
    click_on "Create Inspection"

    assert_text "Inspection was successfully created"
    click_on "Back"
  end

  test "should update Inspection" do
    visit inspection_url(@inspection)
    click_on "Edit this inspection", match: :first

    fill_in "Branchs quantity", with: @inspection.branchs_quantity
    fill_in "Company name", with: @inspection.company_name
    fill_in "Company status", with: @inspection.company_status_id
    fill_in "Email", with: @inspection.email
    fill_in "Explanation", with: @inspection.explanation
    fill_in "Nonsaudi employees", with: @inspection.nonsaudi_employees
    fill_in "Personal name", with: @inspection.personal_name
    fill_in "Phone number", with: @inspection.phone_number
    check "Salary protection" if @inspection.salary_protection
    fill_in "Saudi employees", with: @inspection.saudi_employees
    check "Want inspection" if @inspection.want_inspection
    click_on "Update Inspection"

    assert_text "Inspection was successfully updated"
    click_on "Back"
  end

  test "should destroy Inspection" do
    visit inspection_url(@inspection)
    click_on "Destroy this inspection", match: :first

    assert_text "Inspection was successfully destroyed"
  end
end
