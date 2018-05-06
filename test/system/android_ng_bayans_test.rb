require "application_system_test_case"

class AndroidNgBayansTest < ApplicationSystemTestCase
  setup do
    @android_ng_bayan = android_ng_bayans(:one)
  end

  test "visiting the index" do
    visit android_ng_bayans_url
    assert_selector "h1", text: "Android Ng Bayans"
  end

  test "creating a Android ng bayan" do
    visit android_ng_bayans_url
    click_on "New Android Ng Bayan"

    fill_in "Brand", with: @android_ng_bayan.Brand
    fill_in "Internal Storage", with: @android_ng_bayan.Internal_Storage
    fill_in "Mpixel", with: @android_ng_bayan.Mpixel
    fill_in "Name", with: @android_ng_bayan.Name
    fill_in "Operating System", with: @android_ng_bayan.Operating_System
    fill_in "Size Of Screen", with: @android_ng_bayan.Size_of_Screen
    fill_in "Stock", with: @android_ng_bayan.Stock
    fill_in "Year Released", with: @android_ng_bayan.Year_Released
    click_on "Create Android ng bayan"

    assert_text "Android ng bayan was successfully created"
    click_on "Back"
  end

  test "updating a Android ng bayan" do
    visit android_ng_bayans_url
    click_on "Edit", match: :first

    fill_in "Brand", with: @android_ng_bayan.Brand
    fill_in "Internal Storage", with: @android_ng_bayan.Internal_Storage
    fill_in "Mpixel", with: @android_ng_bayan.Mpixel
    fill_in "Name", with: @android_ng_bayan.Name
    fill_in "Operating System", with: @android_ng_bayan.Operating_System
    fill_in "Size Of Screen", with: @android_ng_bayan.Size_of_Screen
    fill_in "Stock", with: @android_ng_bayan.Stock
    fill_in "Year Released", with: @android_ng_bayan.Year_Released
    click_on "Update Android ng bayan"

    assert_text "Android ng bayan was successfully updated"
    click_on "Back"
  end

  test "destroying a Android ng bayan" do
    visit android_ng_bayans_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Android ng bayan was successfully destroyed"
  end
end
