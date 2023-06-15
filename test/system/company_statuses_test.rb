require "application_system_test_case"

class CompanyStatusesTest < ApplicationSystemTestCase
  setup do
    @company_status = company_statuses(:one)
  end

  test "visiting the index" do
    visit company_statuses_url
    assert_selector "h1", text: "Company statuses"
  end

  test "should create company status" do
    visit company_statuses_url
    click_on "New company status"

    fill_in "Status", with: @company_status.status
    click_on "Create Company status"

    assert_text "Company status was successfully created"
    click_on "Back"
  end

  test "should update Company status" do
    visit company_status_url(@company_status)
    click_on "Edit this company status", match: :first

    fill_in "Status", with: @company_status.status
    click_on "Update Company status"

    assert_text "Company status was successfully updated"
    click_on "Back"
  end

  test "should destroy Company status" do
    visit company_status_url(@company_status)
    click_on "Destroy this company status", match: :first

    assert_text "Company status was successfully destroyed"
  end
end
