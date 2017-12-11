json.extract! vehiculo, :id, :placa, :clase, :subtipo, :edad, :numero_pasajero, :cilindraje, :toneladas, :propietario, :poliza, :created_at, :updated_at
json.url vehiculo_url(vehiculo, format: :json)
