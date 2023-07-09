require "test_helper"

class EnderecousuariosControllerTest < ActionDispatch::IntegrationTest
  setup do
    @enderecousuario = enderecousuarios(:one)
  end

  test "should get index" do
    get enderecousuarios_url
    assert_response :success
  end

  test "should get new" do
    get new_enderecousuario_url
    assert_response :success
  end

  test "should create enderecousuario" do
    assert_difference("Enderecousuario.count") do
      post enderecousuarios_url, params: { enderecousuario: { customerID: @enderecousuario.customerID, logradouro: @enderecousuario.logradouro, state: @enderecousuario.state, state_alias: @enderecousuario.state_alias } }
    end

    assert_redirected_to enderecousuario_url(Enderecousuario.last)
  end

  test "should show enderecousuario" do
    get enderecousuario_url(@enderecousuario)
    assert_response :success
  end

  test "should get edit" do
    get edit_enderecousuario_url(@enderecousuario)
    assert_response :success
  end

  test "should update enderecousuario" do
    patch enderecousuario_url(@enderecousuario), params: { enderecousuario: { customerID: @enderecousuario.customerID, logradouro: @enderecousuario.logradouro, state: @enderecousuario.state, state_alias: @enderecousuario.state_alias } }
    assert_redirected_to enderecousuario_url(@enderecousuario)
  end

  test "should destroy enderecousuario" do
    assert_difference("Enderecousuario.count", -1) do
      delete enderecousuario_url(@enderecousuario)
    end

    assert_redirected_to enderecousuarios_url
  end
end
