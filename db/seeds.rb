# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)


Product.destroy_all
@products = Product.create [
    {
      name: "Aspiradora X1000", 
      photo: "http://cdn.20minutos.es/img/2008/03/06/776378.jpg", 
      price: 1
    },
    {
      name: "Aspiradora X2000", 
      photo: "http://www.whirlpool.com.ar/files/productos/10324_wam16a_01.jpg", 
      price: 1
    },
    {
      name: "Aspiradora X3500", 
      photo: "http://www.aspiradoras.info/wp-content/uploads/2011/11/sensores_aspiradoras_robot.jpg", 
      price: 1
    }
  ]