require 'test_helper'

class ProductItemsControllerTest < ActionController::TestCase
  setup do
    @product_item = product_items(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:product_items)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create product_item" do
    assert_difference('ProductItem.count') do
      post :create, product_item: { name: @product_item.name, price: @product_item.price }
    end

    assert_redirected_to product_item_path(assigns(:product_item))
  end

  test "should show product_item" do
    get :show, id: @product_item
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @product_item
    assert_response :success
  end

  test "should update product_item" do
    patch :update, id: @product_item, product_item: { name: @product_item.name, price: @product_item.price }
    assert_redirected_to product_item_path(assigns(:product_item))
  end

  test "should destroy product_item" do
    assert_difference('ProductItem.count', -1) do
      delete :destroy, id: @product_item
    end

    assert_redirected_to product_items_path
  end
end
