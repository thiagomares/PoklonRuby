require "test_helper"

class RegistroDoacosControllerTest < ActionDispatch::IntegrationTest
  setup do
    @registro_doaco = registro_doacos(:one)
  end

  test "should get index" do
    get registro_doacos_url
    assert_response :success
  end

  test "should get new" do
    get new_registro_doaco_url
    assert_response :success
  end

  test "should create registro_doaco" do
    assert_difference("RegistroDoaco.count") do
      post registro_doacos_url, params: { registro_doaco: { customerID: @registro_doaco.customerID, donationID: @registro_doaco.donationID, donation_date: @registro_doaco.donation_date } }
    end

    assert_redirected_to registro_doaco_url(RegistroDoaco.last)
  end

  test "should show registro_doaco" do
    get registro_doaco_url(@registro_doaco)
    assert_response :success
  end

  test "should get edit" do
    get edit_registro_doaco_url(@registro_doaco)
    assert_response :success
  end

  test "should update registro_doaco" do
    patch registro_doaco_url(@registro_doaco), params: { registro_doaco: { customerID: @registro_doaco.customerID, donationID: @registro_doaco.donationID, donation_date: @registro_doaco.donation_date } }
    assert_redirected_to registro_doaco_url(@registro_doaco)
  end

  test "should destroy registro_doaco" do
    assert_difference("RegistroDoaco.count", -1) do
      delete registro_doaco_url(@registro_doaco)
    end

    assert_redirected_to registro_doacos_url
  end
end
