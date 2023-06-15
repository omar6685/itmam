require "test_helper"

class CompanyStatusesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @company_status = company_statuses(:one)
  end

  test "should get index" do
    get company_statuses_url
    assert_response :success
  end

  test "should get new" do
    get new_company_status_url
    assert_response :success
  end

  test "should create company_status" do
    assert_difference("CompanyStatus.count") do
      post company_statuses_url, params: { company_status: { status: @company_status.status } }
    end

    assert_redirected_to company_status_url(CompanyStatus.last)
  end

  test "should show company_status" do
    get company_status_url(@company_status)
    assert_response :success
  end

  test "should get edit" do
    get edit_company_status_url(@company_status)
    assert_response :success
  end

  test "should update company_status" do
    patch company_status_url(@company_status), params: { company_status: { status: @company_status.status } }
    assert_redirected_to company_status_url(@company_status)
  end

  test "should destroy company_status" do
    assert_difference("CompanyStatus.count", -1) do
      delete company_status_url(@company_status)
    end

    assert_redirected_to company_statuses_url
  end
end
