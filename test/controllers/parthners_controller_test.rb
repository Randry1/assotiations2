require 'test_helper'

class ParthnersControllerTest < ActionDispatch::IntegrationTest
  setup do
    @parthner = parthners(:one)
  end

  test "should get index" do
    get parthners_url
    assert_response :success
  end

  test "should get new" do
    get new_parthner_url
    assert_response :success
  end

  test "should create parthner" do
    assert_difference('Parthner.count') do
      post parthners_url, params: { parthner: { name: @parthner.name } }
    end

    assert_redirected_to parthner_url(Parthner.last)
  end

  test "should show parthner" do
    get parthner_url(@parthner)
    assert_response :success
  end

  test "should get edit" do
    get edit_parthner_url(@parthner)
    assert_response :success
  end

  test "should update parthner" do
    patch parthner_url(@parthner), params: { parthner: { name: @parthner.name } }
    assert_redirected_to parthner_url(@parthner)
  end

  test "should destroy parthner" do
    assert_difference('Parthner.count', -1) do
      delete parthner_url(@parthner)
    end

    assert_redirected_to parthners_url
  end
end
