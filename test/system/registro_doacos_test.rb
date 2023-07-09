require "application_system_test_case"

class RegistroDoacosTest < ApplicationSystemTestCase
  setup do
    @registro_doaco = registro_doacos(:one)
  end

  test "visiting the index" do
    visit registro_doacos_url
    assert_selector "h1", text: "Registro doacos"
  end

  test "should create registro doaco" do
    visit registro_doacos_url
    click_on "New registro doaco"

    fill_in "Customerid", with: @registro_doaco.customerID
    fill_in "Donationid", with: @registro_doaco.donationID
    fill_in "Donation date", with: @registro_doaco.donation_date
    click_on "Create Registro doaco"

    assert_text "Registro doaco was successfully created"
    click_on "Back"
  end

  test "should update Registro doaco" do
    visit registro_doaco_url(@registro_doaco)
    click_on "Edit this registro doaco", match: :first

    fill_in "Customerid", with: @registro_doaco.customerID
    fill_in "Donationid", with: @registro_doaco.donationID
    fill_in "Donation date", with: @registro_doaco.donation_date
    click_on "Update Registro doaco"

    assert_text "Registro doaco was successfully updated"
    click_on "Back"
  end

  test "should destroy Registro doaco" do
    visit registro_doaco_url(@registro_doaco)
    click_on "Destroy this registro doaco", match: :first

    assert_text "Registro doaco was successfully destroyed"
  end
end
