require 'test_helper'

class TransmittersControllerTest < ActionController::TestCase
  setup do
    @transmitter = transmitters(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:transmitters)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create transmitter" do
    assert_difference('Transmitter.count') do
      post :create, transmitter: { city: @transmitter.city, country: @transmitter.country, name: @transmitter.name, neighborhood: @transmitter.neighborhood, number: @transmitter.number, phone: @transmitter.phone, rfc: @transmitter.rfc, state: @transmitter.state, street: @transmitter.street, zc: @transmitter.zc }
    end

    assert_redirected_to transmitter_path(assigns(:transmitter))
  end

  test "should show transmitter" do
    get :show, id: @transmitter
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @transmitter
    assert_response :success
  end

  test "should update transmitter" do
    patch :update, id: @transmitter, transmitter: { city: @transmitter.city, country: @transmitter.country, name: @transmitter.name, neighborhood: @transmitter.neighborhood, number: @transmitter.number, phone: @transmitter.phone, rfc: @transmitter.rfc, state: @transmitter.state, street: @transmitter.street, zc: @transmitter.zc }
    assert_redirected_to transmitter_path(assigns(:transmitter))
  end

  test "should destroy transmitter" do
    assert_difference('Transmitter.count', -1) do
      delete :destroy, id: @transmitter
    end

    assert_redirected_to transmitters_path
  end
end
