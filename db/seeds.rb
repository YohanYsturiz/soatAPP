# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

# este archivo sirve para llenar la base de datos, se utiliza con la siguiente sintaxis 

# Product.create(title:'Aguacate', pricing: '10')
# Product.create(title:'Aguacate', pricing: '10')
# Product.create(title:'Aguacate', pricing: '10')
# Product.create(title:'Aguacate', pricing: '10')

#Classification.create(id_classification: 1, descripcion: 'MOTOS')
#Classification.create(id_classification: 2, descripcion: 'CAMPEROS Y CAMIONETAS')
#Classification.create(id_classification: 3, descripcion: 'CARGA O MIXTO')
#Classification.create(id_classification: 4, descripcion: 'OFICIALES ESPECIALES')
#Classification.create(id_classification: 5, descripcion: 'AUTOS FAMILIARES')
#Classification.create(id_classification: 6, descripcion: 'VEHICULOS PARA SEIS O MAS PASAJEROS')
#Classification.create(id_classification: 7, descripcion: 'AUTOS DE NEGOCIOS Y TAXIS')
#Classification.create(id_classification: 8, descripcion: 'BUSES Y BUSETAS DE SERVICIO PUBLICO URBANO')
#Classification.create(id_classification: 9, descripcion: 'SERVICIO PUBLICO INTERMUNICIPAL')

#Typeclassification.create(id_type: 1, descripcion: 'MENOS DE 100 c.c')
#Typeclassification.create(id_type: 2, descripcion: 'DE 100  a 200 c.c')
#Typeclassification.create(id_type: 3, descripcion: 'MAS de 200 c.c')
#Typeclassification.create(id_type: 4, descripcion: 'MOTOCARROS')
#Typeclassification.create(id_type: 5, descripcion: '1500 a 2500 c.c')
#Typeclassification.create(id_type: 6, descripcion: 'Menos de 1500 c.c')
#Typeclassification.create(id_type: 7, descripcion: 'Mas de 2500 c.c')
#Typeclassification.create(id_type: 8, descripcion: 'Menos de 5 Toneladas')
#Typeclassification.create(id_type: 9, descripcion: 'De 5 a 15 Toneladas')
#Typeclassification.create(id_type: 10, descripcion: 'Mas de 15 Toneladas')
#Typeclassification.create(id_type: 11, descripcion: 'Menor 10 Pasajeros')
#Typeclassification.create(id_type: 12, descripcion: '10 o mas Pasajeros')
#Typeclassification.create(id_type: 13, descripcion: '2500 o mas')

#Age.create(id_ages:1, descripcion:'Menor a 10 años')
#Age.create(id_ages:2, descripcion:'Mayor a 10 años')

# Rate.create(id_rates: 110, classification_id: 1, typeclassification_id: 1, id_age: 0, tasa_comercial: 8.26, value_prima: 203.100, contribucion: 101.550, subtotal: 304.650, runt: 1.610, total: 306.260)
# Rate.create(id_rates: 120, classification_id: 1, typeclassification_id: 2, id_age: 0, tasa_comercial: 11.09, value_prima: 272.700, contribucion: 136.350, subtotal: 409.050, runt: 1.610, total: 410.660)
# Rate.create(id_rates: 130, classification_id: 1, typeclassification_id: 3, id_age: 0, tasa_comercial: 12.51, value_prima: 307.600, contribucion: 153.350, subtotal: 461.400, runt: 1.610, total: 463.010)
# Rate.create(id_rates: 140, classification_id: 1, typeclassification_id: 4, id_age: 0, tasa_comercial: 12.51, value_prima: 307.600, contribucion: 153.350, subtotal: 461.400, runt: 1.610, total: 463.010)
# Rate.create(id_rates: 211, classification_id: 2, typeclassification_id: 6, id_age: 1, tasa_comercial: 13.29, value_prima: 326.800, contribucion: 163.400, subtotal: 490.200, runt: 1.610, total: 491.810)
# Rate.create(id_rates: 212, classification_id: 2, typeclassification_id: 6, id_age: 2, tasa_comercial: 15.99, value_prima: 393.200, contribucion: 196.600, subtotal: 589.800, runt: 1.610, total: 591.410)
# Rate.create(id_rates: 221, classification_id: 2, typeclassification_id: 5, id_age: 1, tasa_comercial: 15.88, value_prima: 390.400, contribucion: 195.200, subtotal: 585.600, runt: 1.610, total: 587.210)
# Rate.create(id_rates: 222, classification_id: 2, typeclassification_id: 5, id_age: 2, tasa_comercial: 18.82, value_prima: 462.700, contribucion: 231.350, subtotal: 694.050, runt: 1.610, total: 695.660)
# Rate.create(id_rates: 231, classification_id: 2, typeclassification_id: 7, id_age: 1, tasa_comercial: 18.63, value_prima: 458.100, contribucion: 229.050, subtotal: 687.150, runt: 1.610, total: 688.760)
# Rate.create(id_rates: 232, classification_id: 2, typeclassification_id: 7, id_age: 2, tasa_comercial: 21.39, value_prima: 525.900, contribucion: 262.950, subtotal: 788.850, runt: 1.610, total: 790.460)
# Rate.create(id_rates: 310, classification_id: 3, typeclassification_id: 8, id_age: 0, tasa_comercial: 14.90, value_prima: 366.300, contribucion: 183.150, subtotal: 549.450, runt: 1.610, total: 551.060)
# Rate.create(id_rates: 320, classification_id: 3, typeclassification_id: 9, id_age: 0, tasa_comercial: 21.53, value_prima: 529.400, contribucion: 264.700, subtotal: 794.100, runt: 1.610, total: 795.710)
# Rate.create(id_rates: 330, classification_id: 3, typeclassification_id: 10, id_age: 0, tasa_comercial: 27.23, value_prima: 669.600, contribucion: 334.800, subtotal: 100004.400, runt: 1.610, total: 1006.010)
# Rate.create(id_rates: 410, classification_id: 4, typeclassification_id: 6, id_age: 0, tasa_comercial: 16.77, value_prima: 412.300, contribucion: 206.150, subtotal: 610.450, runt: 1.610, total: 620.060)
# Rate.create(id_rates: 420, classification_id: 4, typeclassification_id: 5, id_age: 0, tasa_comercial: 21.15, value_prima: 520.000, contribucion: 260.000, subtotal: 780.000, runt: 1.610, total: 781.610)
# Rate.create(id_rates: 430, classification_id: 4, typeclassification_id: 7, id_age: 0, tasa_comercial: 25.36, value_prima: 623.600, contribucion: 311.800, subtotal: 935.400, runt: 1.610, total: 935.010)
# Rate.create(id_rates: 511, classification_id: 5, typeclassification_id: 6, id_age: 1, tasa_comercial: 7.48, value_prima: 183.900, contribucion: 91.950, subtotal: 275.850, runt: 1.610, total: 277.460)
# Rate.create(id_rates: 512, classification_id: 5, typeclassification_id: 6, id_age: 2, tasa_comercial: 9.93, value_prima: 244.100, contribucion: 122.050, subtotal: 366.150, runt: 1.610, total: 367.910)
# Rate.create(id_rates: 521, classification_id: 5, typeclassification_id: 5, id_age: 1, tasa_comercial: 9.12, value_prima: 244.200, contribucion: 112.100, subtotal: 366.300, runt: 1.610, total: 337.910)
# Rate.create(id_rates: 522, classification_id: 5, typeclassification_id: 5, id_age: 2, tasa_comercial: 11.35, value_prima: 279.100, contribucion: 139.550, subtotal: 418.650, runt: 1.610, total: 420.260)
# Rate.create(id_rates: 531, classification_id: 5, typeclassification_id: 7, id_age: 1, tasa_comercial: 10.66, value_prima: 262.100, contribucion: 131.050, subtotal: 393.150, runt: 1.610, total: 394.760)
# Rate.create(id_rates: 532, classification_id: 5, typeclassification_id: 7, id_age: 2, tasa_comercial: 12.65, value_prima: 311.000, contribucion: 155.500, subtotal: 466.500, runt: 1.610, total: 468.110)
# Rate.create(id_rates: 611, classification_id: 6, typeclassification_id: 6, id_age: 1, tasa_comercial: 13.37, value_prima: 328.700, contribucion: 164.350, subtotal: 493.050, runt: 1.610, total: 494.110)
# Rate.create(id_rates: 711, classification_id: 7, typeclassification_id: 6, id_age: 1, tasa_comercial: 9.28, value_prima: 228.200, contribucion: 114.100, subtotal: 342.300, runt: 1.610, total: 343.910)
# Rate.create(id_rates: 810, classification_id: 8, typeclassification_id: 0, id_age: 0, tasa_comercial: 21.81, value_prima: 536.300, contribucion: 268.150, subtotal: 804.450, runt: 1.610, total: 806.060)
# Rate.create(id_rates: 920, classification_id: 9, typeclassification_id: 11, id_age: 0, tasa_comercial: 22.01, value_prima: 541.200, contribucion: 270.600, subtotal: 811.800, runt: 1.610, total: 813.410)

Coverage.create(gasto_funerario: 750, gasto_medico: 800, inc_permanente: 180, gasto_transporte: '10')

# http://blog.desafiolatam.com/formularios-anidados-en-ruby-on-rails/ -- Link donnde explican formularios anidados
#t.integer :id_rates
#t.integer :id_classifications
#t.integer :id_subclassification
#t.integer :id_age
#t.float :tasa_comercial
#t.float :value_prima
#t.float :contribucion
#t.float :subtotal
#t.float :runt
#t.float :total
# Luego con el comando rake db:seed se llena la tabla