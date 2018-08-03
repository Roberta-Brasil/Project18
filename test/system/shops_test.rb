require "application_system_test_case"

class ShopsTest < ApplicationSystemTestCase
  setup do
    @shop = shops(:one)
  end

  test "visiting the index" do
    visit shops_url
    assert_selector "h1", text: "Shops"
  end

  test "creating a Shop" do
    visit shops_url
    click_on "New Shop"

    fill_in "Employee Name", with: @shop.employee_name
    fill_in "Manager", with: @shop.manager_id
    fill_in "Shop Address", with: @shop.shop_address
    fill_in "Shop", with: @shop.shop_id
    fill_in "Shop Phone", with: @shop.shop_phone
    click_on "Create Shop"

    assert_text "Shop was successfully created"
    click_on "Back"
  end

  test "updating a Shop" do
    visit shops_url
    click_on "Edit", match: :first

    fill_in "Employee Name", with: @shop.employee_name
    fill_in "Manager", with: @shop.manager_id
    fill_in "Shop Address", with: @shop.shop_address
    fill_in "Shop", with: @shop.shop_id
    fill_in "Shop Phone", with: @shop.shop_phone
    click_on "Update Shop"

    assert_text "Shop was successfully updated"
    click_on "Back"
  end

  test "destroying a Shop" do
    visit shops_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Shop was successfully destroyed"
  end
end
