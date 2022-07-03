require "test_helper"

class FiestaControllerTest < ActionDispatch::IntegrationTest
  setup do
    @fiestum = fiesta(:one)
  end

  test "should get index" do
    get fiesta_url
    assert_response :success
  end

  test "should get new" do
    get new_fiestum_url
    assert_response :success
  end

  test "should create fiestum" do
    assert_difference("Fiestum.count") do
      post fiesta_url, params: { fiestum: { descripcion: @fiestum.descripcion, fetcha: @fiestum.fetcha, nombre: @fiestum.nombre } }
    end

    assert_redirected_to fiestum_url(Fiestum.last)
  end

  test "should show fiestum" do
    get fiestum_url(@fiestum)
    assert_response :success
  end

  test "should get edit" do
    get edit_fiestum_url(@fiestum)
    assert_response :success
  end

  test "should update fiestum" do
    patch fiestum_url(@fiestum), params: { fiestum: { descripcion: @fiestum.descripcion, fetcha: @fiestum.fetcha, nombre: @fiestum.nombre } }
    assert_redirected_to fiestum_url(@fiestum)
  end

  test "should destroy fiestum" do
    assert_difference("Fiestum.count", -1) do
      delete fiestum_url(@fiestum)
    end

    assert_redirected_to fiesta_url
  end
end
