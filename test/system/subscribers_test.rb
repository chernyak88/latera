require "application_system_test_case"

class SubscribersTest < ApplicationSystemTestCase
  setup do
    @subscriber = subscribers(:one)
  end

  test "visiting the index" do
    visit subscribers_url
    assert_selector "h1", text: "Subscribers"
  end

  test "creating a Subscriber" do
    visit subscribers_url
    click_on "New Subscriber"

    fill_in "Library", with: @subscriber.library_id
    fill_in "Sub address", with: @subscriber.sub_address
    fill_in "Sub name", with: @subscriber.sub_name
    fill_in "Sub patronymic", with: @subscriber.sub_patronymic
    fill_in "Sub phone", with: @subscriber.sub_phone
    fill_in "Sub surname", with: @subscriber.sub_surname
    fill_in "Sub ticket", with: @subscriber.sub_ticket
    click_on "Create Subscriber"

    assert_text "Subscriber was successfully created"
    click_on "Back"
  end

  test "updating a Subscriber" do
    visit subscribers_url
    click_on "Edit", match: :first

    fill_in "Library", with: @subscriber.library_id
    fill_in "Sub address", with: @subscriber.sub_address
    fill_in "Sub name", with: @subscriber.sub_name
    fill_in "Sub patronymic", with: @subscriber.sub_patronymic
    fill_in "Sub phone", with: @subscriber.sub_phone
    fill_in "Sub surname", with: @subscriber.sub_surname
    fill_in "Sub ticket", with: @subscriber.sub_ticket
    click_on "Update Subscriber"

    assert_text "Subscriber was successfully updated"
    click_on "Back"
  end

  test "destroying a Subscriber" do
    visit subscribers_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Subscriber was successfully destroyed"
  end
end
