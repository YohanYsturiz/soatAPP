require 'test_helper'

class VehiculosControllerTest < ActionController::TestCase
  setup do
    @vehiculo = vehiculos(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:vehiculos)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create vehiculo" do
    assert_difference('Vehiculo.count') do
      post :create, vehiculo: { cilindraje: @vehiculo.cilindraje, clase: @vehiculo.clase, edad: @vehiculo.edad, numero_pasajero: @vehiculo.numero_pasajero, placa: @vehiculo.placa, poliza: @vehiculo.poliza, propietario: @vehiculo.propietario, subtipo: @vehiculo.subtipo, toneladas: @vehiculo.toneladas }
    end

    assert_redirected_to vehiculo_path(assigns(:vehiculo))
  end

  test "should show vehiculo" do
    get :show, id: @vehiculo
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @vehiculo
    assert_response :success
  end

  test "should update vehiculo" do
    patch :update, id: @vehiculo, vehiculo: { cilindraje: @vehiculo.cilindraje, clase: @vehiculo.clase, edad: @vehiculo.edad, numero_pasajero: @vehiculo.numero_pasajero, placa: @vehiculo.placa, poliza: @vehiculo.poliza, propietario: @vehiculo.propietario, subtipo: @vehiculo.subtipo, toneladas: @vehiculo.toneladas }
    assert_redirected_to vehiculo_path(assigns(:vehiculo))
  end

  test "should destroy vehiculo" do
    assert_difference('Vehiculo.count', -1) do
      delete :destroy, id: @vehiculo
    end

    assert_redirected_to vehiculos_path
  end
end
