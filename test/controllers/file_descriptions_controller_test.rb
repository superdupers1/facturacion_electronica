require 'test_helper'

class FileDescriptionsControllerTest < ActionController::TestCase
  setup do
    @file_description = file_descriptions(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:file_descriptions)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create file_description" do
    assert_difference('FileDescription.count') do
      post :create, file_description: { amount: @file_description.amount, cantidad: @file_description.cantidad, code: @file_description.code, description: @file_description.description, document_id: @file_description.document_id, price: @file_description.price, product_id: @file_description.product_id, unit: @file_description.unit }
    end

    assert_redirected_to file_description_path(assigns(:file_description))
  end

  test "should show file_description" do
    get :show, id: @file_description
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @file_description
    assert_response :success
  end

  test "should update file_description" do
    patch :update, id: @file_description, file_description: { amount: @file_description.amount, cantidad: @file_description.cantidad, code: @file_description.code, description: @file_description.description, document_id: @file_description.document_id, price: @file_description.price, product_id: @file_description.product_id, unit: @file_description.unit }
    assert_redirected_to file_description_path(assigns(:file_description))
  end

  test "should destroy file_description" do
    assert_difference('FileDescription.count', -1) do
      delete :destroy, id: @file_description
    end

    assert_redirected_to file_descriptions_path
  end
end
