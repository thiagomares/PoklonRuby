require "application_system_test_case"

class UsuariosTest < ApplicationSystemTestCase
  setup do
    @usuario = usuarios(:one)
  end

  test "visiting the index" do
    visit usuarios_url
    assert_selector "h1", text: "Usuarios"
  end

  test "should create usuario" do
    visit usuarios_url
    click_on "New usuario"

    fill_in "Customerid", with: @usuario.customerID
    fill_in "Customer name", with: @usuario.customer_name
    fill_in "Data nascimento", with: @usuario.data_nascimento
    fill_in "Primary email address", with: @usuario.primary_email_address
    click_on "Create Usuario"

    assert_text "Usuario was successfully created"
    click_on "Back"
  end

  test "should update Usuario" do
    visit usuario_url(@usuario)
    click_on "Edit this usuario", match: :first

    fill_in "Customerid", with: @usuario.customerID
    fill_in "Customer name", with: @usuario.customer_name
    fill_in "Data nascimento", with: @usuario.data_nascimento
    fill_in "Primary email address", with: @usuario.primary_email_address
    click_on "Update Usuario"

    assert_text "Usuario was successfully updated"
    click_on "Back"
  end

  test "should destroy Usuario" do
    visit usuario_url(@usuario)
    click_on "Destroy this usuario", match: :first

    assert_text "Usuario was successfully destroyed"
  end
end
