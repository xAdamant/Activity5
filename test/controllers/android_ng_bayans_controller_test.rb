require 'test_helper'

class AndroidNgBayansControllerTest < ActionDispatch::IntegrationTest
  setup do
    @android_ng_bayan = android_ng_bayans(:one)
  end

  test "should get index" do
    get android_ng_bayans_url
    assert_response :success
  end

  test "should get new" do
    get new_android_ng_bayan_url
    assert_response :success
  end

  test "should create android_ng_bayan" do
    assert_difference('AndroidNgBayan.count') do
      post android_ng_bayans_url, params: { android_ng_bayan: { Brand: @android_ng_bayan.Brand, Internal_Storage: @android_ng_bayan.Internal_Storage, Mpixel: @android_ng_bayan.Mpixel, Name: @android_ng_bayan.Name, Operating_System: @android_ng_bayan.Operating_System, Size_of_Screen: @android_ng_bayan.Size_of_Screen, Stock: @android_ng_bayan.Stock, Year_Released: @android_ng_bayan.Year_Released } }
    end

    assert_redirected_to android_ng_bayan_url(AndroidNgBayan.last)
  end

  test "should show android_ng_bayan" do
    get android_ng_bayan_url(@android_ng_bayan)
    assert_response :success
  end

  test "should get edit" do
    get edit_android_ng_bayan_url(@android_ng_bayan)
    assert_response :success
  end

  test "should update android_ng_bayan" do
    patch android_ng_bayan_url(@android_ng_bayan), params: { android_ng_bayan: { Brand: @android_ng_bayan.Brand, Internal_Storage: @android_ng_bayan.Internal_Storage, Mpixel: @android_ng_bayan.Mpixel, Name: @android_ng_bayan.Name, Operating_System: @android_ng_bayan.Operating_System, Size_of_Screen: @android_ng_bayan.Size_of_Screen, Stock: @android_ng_bayan.Stock, Year_Released: @android_ng_bayan.Year_Released } }
    assert_redirected_to android_ng_bayan_url(@android_ng_bayan)
  end

  test "should destroy android_ng_bayan" do
    assert_difference('AndroidNgBayan.count', -1) do
      delete android_ng_bayan_url(@android_ng_bayan)
    end

    assert_redirected_to android_ng_bayans_url
  end
end
