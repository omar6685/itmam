require "test_helper"

class StudiesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @study = studies(:one)
  end

  test "should get index" do
    get studies_url
    assert_response :success
  end

  test "should get new" do
    get new_study_url
    assert_response :success
  end

  test "should create study" do
    assert_difference("Study.count") do
      post studies_url, params: { study: { adaptation: @study.adaptation, ajier: @study.ajier, company_size_id: @study.company_size_id, foreigner: @study.foreigner, foreigner_like_foreigner: @study.foreigner_like_foreigner, foreigner_like_saudi: @study.foreigner_like_saudi, gulf_citizen: @study.gulf_citizen, localization_rate: @study.localization_rate, owner: @study.owner, red_week: @study.red_week, saudi: @study.saudi, saudi_disable: @study.saudi_disable, saudi_four: @study.saudi_four, saudi_jailed: @study.saudi_jailed, saudi_loan_player: @study.saudi_loan_player, saudi_online: @study.saudi_online, saudi_player: @study.saudi_player, saudi_student: @study.saudi_student, saudi_three: @study.saudi_three, saudi_three_four: @study.saudi_three_four, special_foreigner: @study.special_foreigner, special_saudis: @study.special_saudis, specialy_foreigner: @study.specialy_foreigner, tribe_saudi: @study.tribe_saudi, uncounted_saudi: @study.uncounted_saudi, visa: @study.visa } }
    end

    assert_redirected_to study_url(Study.last)
  end

  test "should show study" do
    get study_url(@study)
    assert_response :success
  end

  test "should get edit" do
    get edit_study_url(@study)
    assert_response :success
  end

  test "should update study" do
    patch study_url(@study), params: { study: { adaptation: @study.adaptation, ajier: @study.ajier, company_size_id: @study.company_size_id, foreigner: @study.foreigner, foreigner_like_foreigner: @study.foreigner_like_foreigner, foreigner_like_saudi: @study.foreigner_like_saudi, gulf_citizen: @study.gulf_citizen, localization_rate: @study.localization_rate, owner: @study.owner, red_week: @study.red_week, saudi: @study.saudi, saudi_disable: @study.saudi_disable, saudi_four: @study.saudi_four, saudi_jailed: @study.saudi_jailed, saudi_loan_player: @study.saudi_loan_player, saudi_online: @study.saudi_online, saudi_player: @study.saudi_player, saudi_student: @study.saudi_student, saudi_three: @study.saudi_three, saudi_three_four: @study.saudi_three_four, special_foreigner: @study.special_foreigner, special_saudis: @study.special_saudis, specialy_foreigner: @study.specialy_foreigner, tribe_saudi: @study.tribe_saudi, uncounted_saudi: @study.uncounted_saudi, visa: @study.visa } }
    assert_redirected_to study_url(@study)
  end

  test "should destroy study" do
    assert_difference("Study.count", -1) do
      delete study_url(@study)
    end

    assert_redirected_to studies_url
  end
end
