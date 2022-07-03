require "application_system_test_case"

class FiestaTest < ApplicationSystemTestCase
  setup do
    @fiestum = fiesta(:one)
  end

  test "visiting the index" do
    visit fiesta_url
    assert_selector "h1", text: "Fiesta"
  end

  test "should create fiestum" do
    visit fiesta_url
    click_on "New fiestum"

    fill_in "Descripcion", with: @fiestum.descripcion
    fill_in "Fetcha", with: @fiestum.fetcha
    fill_in "Nombre", with: @fiestum.nombre
    click_on "Create Fiestum"

    assert_text "Fiestum was successfully created"
    click_on "Back"
  end

  test "should update Fiestum" do
    visit fiestum_url(@fiestum)
    click_on "Edit this fiestum", match: :first

    fill_in "Descripcion", with: @fiestum.descripcion
    fill_in "Fetcha", with: @fiestum.fetcha
    fill_in "Nombre", with: @fiestum.nombre
    click_on "Update Fiestum"

    assert_text "Fiestum was successfully updated"
    click_on "Back"
  end

  test "should destroy Fiestum" do
    visit fiestum_url(@fiestum)
    click_on "Destroy this fiestum", match: :first

    assert_text "Fiestum was successfully destroyed"
  end
end
