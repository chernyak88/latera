require "application_system_test_case"

class WorkersTest < ApplicationSystemTestCase
  setup do
    @worker = workers(:one)
  end

  test "visiting the index" do
    visit workers_url
    assert_selector "h1", text: "Workers"
  end

  test "creating a Worker" do
    visit workers_url
    click_on "New Worker"

    fill_in "Library", with: @worker.library_id
    fill_in "Worker birth date", with: @worker.worker_birth_date
    fill_in "Worker education", with: @worker.worker_education
    fill_in "Worker employment date", with: @worker.worker_employment_date
    fill_in "Worker name", with: @worker.worker_name
    fill_in "Worker patronymic", with: @worker.worker_patronymic
    fill_in "Worker position", with: @worker.worker_position
    fill_in "Worker surname", with: @worker.worker_surname
    click_on "Create Worker"

    assert_text "Worker was successfully created"
    click_on "Back"
  end

  test "updating a Worker" do
    visit workers_url
    click_on "Edit", match: :first

    fill_in "Library", with: @worker.library_id
    fill_in "Worker birth date", with: @worker.worker_birth_date
    fill_in "Worker education", with: @worker.worker_education
    fill_in "Worker employment date", with: @worker.worker_employment_date
    fill_in "Worker name", with: @worker.worker_name
    fill_in "Worker patronymic", with: @worker.worker_patronymic
    fill_in "Worker position", with: @worker.worker_position
    fill_in "Worker surname", with: @worker.worker_surname
    click_on "Update Worker"

    assert_text "Worker was successfully updated"
    click_on "Back"
  end

  test "destroying a Worker" do
    visit workers_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Worker was successfully destroyed"
  end
end
