require "test_helper"

class InspectionsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @inspection = inspections(:one)
  end

  test "should get index" do
    get inspections_url
    assert_response :success
  end

  test "should get new" do
    get new_inspection_url
    assert_response :success
  end

  test "should create inspection" do
    assert_difference("Inspection.count") do
      post inspections_url, params: { inspection: { branchs_quantity: @inspection.branchs_quantity, company_name: @inspection.company_name, company_status_id: @inspection.company_status_id, email: @inspection.email, explanation: @inspection.explanation, nonsaudi_employees: @inspection.nonsaudi_employees, personal_name: @inspection.personal_name, phone_number: @inspection.phone_number, salary_protection: @inspection.salary_protection, saudi_employees: @inspection.saudi_employees, want_inspection: @inspection.want_inspection } }
    end

    assert_redirected_to inspection_url(Inspection.last)
  end

  test "should show inspection" do
    get inspection_url(@inspection)
    assert_response :success
  end

  test "should get edit" do
    get edit_inspection_url(@inspection)
    assert_response :success
  end

  test "should update inspection" do
    patch inspection_url(@inspection), params: { inspection: { branchs_quantity: @inspection.branchs_quantity, company_name: @inspection.company_name, company_status_id: @inspection.company_status_id, email: @inspection.email, explanation: @inspection.explanation, nonsaudi_employees: @inspection.nonsaudi_employees, personal_name: @inspection.personal_name, phone_number: @inspection.phone_number, salary_protection: @inspection.salary_protection, saudi_employees: @inspection.saudi_employees, want_inspection: @inspection.want_inspection } }
    assert_redirected_to inspection_url(@inspection)
  end

  test "should destroy inspection" do
    assert_difference("Inspection.count", -1) do
      delete inspection_url(@inspection)
    end

    assert_redirected_to inspections_url
  end
end
