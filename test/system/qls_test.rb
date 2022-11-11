require "application_system_test_case"

class QlsTest < ApplicationSystemTestCase
  setup do
    @ql = qls(:one)
  end

  test "visiting the index" do
    visit qls_url
    assert_selector "h1", text: "Qls"
  end

  test "creating a Ql" do
    visit qls_url
    click_on "New Ql"

    fill_in "Content", with: @ql.content
    fill_in "Title", with: @ql.title
    click_on "Create Ql"

    assert_text "Ql was successfully created"
    click_on "Back"
  end

  test "updating a Ql" do
    visit qls_url
    click_on "Edit", match: :first

    fill_in "Content", with: @ql.content
    fill_in "Title", with: @ql.title
    click_on "Update Ql"

    assert_text "Ql was successfully updated"
    click_on "Back"
  end

  test "destroying a Ql" do
    visit qls_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Ql was successfully destroyed"
  end
end
