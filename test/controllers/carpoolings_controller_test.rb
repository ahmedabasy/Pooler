require 'test_helper'

class CarpoolingsControllerTest < ActionController::TestCase
  setup do
    @carpooling = carpoolings(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:carpoolings)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create carpooling" do
    assert_difference('Carpooling.count') do
      post :create, carpooling: { age: @carpooling.age, destination_location: @carpooling.destination_location, from: @carpooling.from, location_selection: @carpooling.location_selection, name: @carpooling.name, notes: @carpooling.notes, telephone: @carpooling.telephone, to: @carpooling.to, travel_date: @carpooling.travel_date }
    end

    assert_redirected_to carpooling_path(assigns(:carpooling))
  end

  test "should show carpooling" do
    get :show, id: @carpooling
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @carpooling
    assert_response :success
  end

  test "should update carpooling" do
    patch :update, id: @carpooling, carpooling: { age: @carpooling.age, destination_location: @carpooling.destination_location, from: @carpooling.from, location_selection: @carpooling.location_selection, name: @carpooling.name, notes: @carpooling.notes, telephone: @carpooling.telephone, to: @carpooling.to, travel_date: @carpooling.travel_date }
    assert_redirected_to carpooling_path(assigns(:carpooling))
  end

  test "should destroy carpooling" do
    assert_difference('Carpooling.count', -1) do
      delete :destroy, id: @carpooling
    end

    assert_redirected_to carpoolings_path
  end
end
