require 'test_helper'

class ItemStatusesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @item_status = item_statuses(:one)
  end

  test "should get index" do
    get item_statuses_url, as: :json
    assert_response :success
  end

  test "should create item_status" do
    assert_difference('ItemStatus.count') do
      post item_statuses_url, params: { item_status: { name: @item_status.name } }, as: :json
    end

    assert_response 201
  end

  test "should show item_status" do
    get item_status_url(@item_status), as: :json
    assert_response :success
  end

  test "should update item_status" do
    patch item_status_url(@item_status), params: { item_status: { name: @item_status.name } }, as: :json
    assert_response 200
  end

  test "should destroy item_status" do
    assert_difference('ItemStatus.count', -1) do
      delete item_status_url(@item_status), as: :json
    end

    assert_response 204
  end
end
