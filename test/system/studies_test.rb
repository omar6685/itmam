require "application_system_test_case"

class StudiesTest < ApplicationSystemTestCase
  setup do
    @study = studies(:one)
  end

  test "visiting the index" do
    visit studies_url
    assert_selector "h1", text: "Studies"
  end

  test "should create study" do
    visit studies_url
    click_on "New study"

    check "Adaptation" if @study.adaptation
    fill_in "Ajier", with: @study.ajier
    fill_in "Foreigner", with: @study.foreigner
    fill_in "Foreigner like foreigner", with: @study.foreigner_like_foreigner
    fill_in "Foreigner like saudi", with: @study.foreigner_like_saudi
    fill_in "Gulf citizen", with: @study.gulf_citizen
    fill_in "Localization rate", with: @study.localization_rate
    fill_in "Owner", with: @study.owner
    fill_in "Red week", with: @study.red_week
    fill_in "Saudi", with: @study.saudi
    fill_in "Saudi disable", with: @study.saudi_disable
    fill_in "Saudi four", with: @study.saudi_four
    fill_in "Saudi jailed", with: @study.saudi_jailed
    fill_in "Saudi loan player", with: @study.saudi_loan_player
    fill_in "Saudi online", with: @study.saudi_online
    fill_in "Saudi player", with: @study.saudi_player
    fill_in "Saudi student", with: @study.saudi_student
    fill_in "Saudi three", with: @study.saudi_three
    fill_in "Saudi three four", with: @study.saudi_three_four
    fill_in "Special foreigner", with: @study.special_foreigner
    fill_in "Special saudis", with: @study.special_saudis
    fill_in "Specialy foreigner", with: @study.specialy_foreigner
    fill_in "Tribe saudi", with: @study.tribe_saudi
    fill_in "Uncounted saudi", with: @study.uncounted_saudi
    fill_in "Visa", with: @study.visa
    click_on "Create Study"

    assert_text "Study was successfully created"
    click_on "Back"
  end

  test "should update Study" do
    visit study_url(@study)
    click_on "Edit this study", match: :first

    check "Adaptation" if @study.adaptation
    fill_in "Ajier", with: @study.ajier
    fill_in "Foreigner", with: @study.foreigner
    fill_in "Foreigner like foreigner", with: @study.foreigner_like_foreigner
    fill_in "Foreigner like saudi", with: @study.foreigner_like_saudi
    fill_in "Gulf citizen", with: @study.gulf_citizen
    fill_in "Localization rate", with: @study.localization_rate
    fill_in "Owner", with: @study.owner
    fill_in "Red week", with: @study.red_week
    fill_in "Saudi", with: @study.saudi
    fill_in "Saudi disable", with: @study.saudi_disable
    fill_in "Saudi four", with: @study.saudi_four
    fill_in "Saudi jailed", with: @study.saudi_jailed
    fill_in "Saudi loan player", with: @study.saudi_loan_player
    fill_in "Saudi online", with: @study.saudi_online
    fill_in "Saudi player", with: @study.saudi_player
    fill_in "Saudi student", with: @study.saudi_student
    fill_in "Saudi three", with: @study.saudi_three
    fill_in "Saudi three four", with: @study.saudi_three_four
    fill_in "Special foreigner", with: @study.special_foreigner
    fill_in "Special saudis", with: @study.special_saudis
    fill_in "Specialy foreigner", with: @study.specialy_foreigner
    fill_in "Tribe saudi", with: @study.tribe_saudi
    fill_in "Uncounted saudi", with: @study.uncounted_saudi
    fill_in "Visa", with: @study.visa
    click_on "Update Study"

    assert_text "Study was successfully updated"
    click_on "Back"
  end

  test "should destroy Study" do
    visit study_url(@study)
    click_on "Destroy this study", match: :first

    assert_text "Study was successfully destroyed"
  end
end
