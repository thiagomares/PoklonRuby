require "application_system_test_case"

class EnderecousuariosTest < ApplicationSystemTestCase
  setup do
    @enderecousuario = enderecousuarios(:one)
  end

  test "visiting the index" do
    visit enderecousuarios_url
    assert_selector "h1", text: "Enderecousuarios"
  end

  test "should create enderecousuario" do
    visit enderecousuarios_url
    click_on "New enderecousuario"

    fill_in "Customerid", with: @enderecousuario.customerID
    fill_in "Logradouro", with: @enderecousuario.logradouro
    fill_in "State", with: @enderecousuario.state
    fill_in "State alias", with: @enderecousuario.state_alias
    click_on "Create Enderecousuario"

    assert_text "Enderecousuario was successfully created"
    click_on "Back"
  end

  test "should update Enderecousuario" do
    visit enderecousuario_url(@enderecousuario)
    click_on "Edit this enderecousuario", match: :first

    fill_in "Customerid", with: @enderecousuario.customerID
    fill_in "Logradouro", with: @enderecousuario.logradouro
    fill_in "State", with: @enderecousuario.state
    fill_in "State alias", with: @enderecousuario.state_alias
    click_on "Update Enderecousuario"

    assert_text "Enderecousuario was successfully updated"
    click_on "Back"
  end

  test "should destroy Enderecousuario" do
    visit enderecousuario_url(@enderecousuario)
    click_on "Destroy this enderecousuario", match: :first

    assert_text "Enderecousuario was successfully destroyed"
  end
end
