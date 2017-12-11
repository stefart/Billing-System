require 'test_helper'

class TariffaOrariaControllerTest < ActionDispatch::IntegrationTest
  setup do
    @tariffa_orarium = tariffa_oraria(:one)
  end

  test "should get index" do
    get tariffa_oraria_url
    assert_response :success
  end

  test "should get new" do
    get new_tariffa_orarium_url
    assert_response :success
  end

  test "should create tariffa_orarium" do
    assert_difference('TariffaOrarium.count') do
      post tariffa_oraria_url, params: { tariffa_orarium: { tariffa: @tariffa_orarium.tariffa } }
    end

    assert_redirected_to tariffa_orarium_url(TariffaOrarium.last)
  end

  test "should show tariffa_orarium" do
    get tariffa_orarium_url(@tariffa_orarium)
    assert_response :success
  end

  test "should get edit" do
    get edit_tariffa_orarium_url(@tariffa_orarium)
    assert_response :success
  end

  test "should update tariffa_orarium" do
    patch tariffa_orarium_url(@tariffa_orarium), params: { tariffa_orarium: { tariffa: @tariffa_orarium.tariffa } }
    assert_redirected_to tariffa_orarium_url(@tariffa_orarium)
  end

  test "should destroy tariffa_orarium" do
    assert_difference('TariffaOrarium.count', -1) do
      delete tariffa_orarium_url(@tariffa_orarium)
    end

    assert_redirected_to tariffa_oraria_url
  end
end
