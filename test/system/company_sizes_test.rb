require "application_system_test_case"

class CompanySizesTest < ApplicationSystemTestCase
  setup do
    @company_size = company_sizes(:one)
  end

  test "visiting the index" do
    visit company_sizes_url
    assert_selector "h1", text: "Company sizes"
  end

  test "should create company size" do
    visit company_sizes_url
    click_on "New company size"

    fill_in "Size", with: @company_size.size
    click_on "Create Company size"

    assert_text "Company size was successfully created"
    click_on "Back"
  end

  test "should update Company size" do
    visit company_size_url(@company_size)
    click_on "Edit this company size", match: :first

    fill_in "Size", with: @company_size.size
    click_on "Update Company size"

    assert_text "Company size was successfully updated"
    click_on "Back"
  end

  test "should destroy Company size" do
    visit company_size_url(@company_size)
    click_on "Destroy this company size", match: :first

    assert_text "Company size was successfully destroyed"
  end
end
